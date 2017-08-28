import os
import sys
import numpy as np
from PIL import Image

def removeOtherColor(img,r,g,b):
    pixdata = img.load()
    for y in range(img.size[1]):
        for x in range(img.size[0]):
            if pixdata[x, y] == (0, 116, 194, 255):
                pixdata[x, y] = (0, 0, 0, 255)
            else:
                pixdata[x, y] = (255, 255, 255, 255)
    return img

def replaceColor(img,r,g,b,re):
    import numpy as np

    orig_color = (r,g,b)
    replacement_color = (re,re,re)
    img = img.convert('RGB')
    data = np.array(img)
    data[(data == orig_color).all(axis = -1)] = replacement_color
    return Image.fromarray(data, mode='RGB')

def getFile(dirname):
    return os.listdir(dirname)

def makedir(name):
    if not os.path.exists(name):
        os.makedirs(name)

def makeGeoJson(_area,_maptype,_zoom,_type):
    path = "./"+_area+"/"+_maptype+"/"+_zoom+"/"

    #convert PNG to PPM
    images = getFile(path)
    makedir("ppm")
    cnt = 0
    for img in images:
        img_file = Image.open(path+img)
        img_file = img_file.convert("RGBA")
        
        #img_file = removeColor(img_file) #remove other color
         #remove and replace color
        if _type == 'road':
            img_file = replaceColor(img_file,255,255,255,0)
            img_file = replaceColor(img_file,0,0,255,0)            
            img_file = replaceColor(img_file,0,255,0,255)
        elif _type == 'water':
            img_file = replaceColor(img_file,255,255,255,0)
            img_file = replaceColor(img_file,0,255,0,0)            
            img_file = replaceColor(img_file,0,0,255,255)
        elif _type == 'building':        
            img_file = replaceColor(img_file,0,255,0,0)
            img_file = replaceColor(img_file,0,0,255,0)
        elif _type == 'building2':
            img_file = removeOtherColor(img_file,0,116,194)
            '''
            img_file = replaceColor(img_file,255,255,255,0)
            img_file = replaceColor(img_file,0,255,0,0)            
            img_file = replaceColor(img_file,0,0,255,255)
            '''
        #img_file = Image.eval(img_file, lambda x : 256 - x) #invert image

        newName = img[0:len(img)-4]+'.ppm'
        img_file.save('./ppm/'+newName)
        cnt += 1
        print (img+' converted to '+newName+' {0:.1f}%'.format(cnt / len(images) * 100))
        
        #os.system('convert ./input/'+img+' '+newName)
        #os.system('mv ./'+newName+' '+'./ppm')

    #using autotrace
    #convert PPM to SVG
    '''
    images = getFile("./ppm")
    makedir("svg")
    for img in images:
        newName = img[0:len(img)-4]+'.svg'
        order = '-corner-surround 0 -corner-threshold 200'    
        os.system('autotrace ./ppm/'+img+' -output-file ./svg/'+newName+' -output-format svg '+order )
        
    #convert SVG to PPM
    images = getFile("./svg")
    for img in images:
        newName = img[0:len(img)-4]+'.ppm'
        os.system('convert ./svg/'+img+' '+newName)
        os.system('mv ./'+newName+' '+'./ppm')
    '''
    #using potrace
    #convert BMP to GeoJson

    makedir("xyGeoJson/"+_area+"/"+_maptype+"/"+_zoom+"/"+_type)
    makedir("outputsvg/"+_area+"/"+_maptype+"/"+_zoom+"/"+_type)
    images = getFile("./ppm")
    cnt = 0    
    for img in images:
        newName = img[0:len(img)-4]+'.json'
        newName2 = img[0:len(img)-4]+'.svg'
        order = "-O 10 -a 0 -u 100 -t 10 --longcurve"
        os.system('./potrace ./ppm/'+img+' -b geojson '+order+' -o ./xyGeoJson/'+_area+"/"+_maptype+"/"+_zoom+"/"+_type+"/"+newName)
        os.system('./potrace ./ppm/'+img+' -s --flat '+order+' -o ./outputsvg/'+_area+"/"+_maptype+"/"+_zoom+"/"+_type+"/"+newName2)
        cnt += 1        
        print (img+' converted to '+newName+' {0:.1f}%'.format(cnt / len(images) * 100))  
        
    #delete temp files
    #os.system('rm -r ./ppm ')
    print ('done')
    
if __name__ == "__main__":
    area=sys.argv[1]
    maptype=sys.argv[2]
    zoom=sys.argv[3]
    _type = sys.argv[4]
    makeGeoJson(area,maptype,zoom,_type)
