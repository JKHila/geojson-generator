import json
import os
import sys
# from xy2latlong import *
from pprint import pprint

import math

def tile2long(x,z):
    return (x/math.pow(2,z)*360-180)

def tile2lat(y,z):
    n=math.pi-2*math.pi*y/math.pow(2,z)
    return (180/math.pi*math.atan(0.5*(math.exp(n)-math.exp(-n))))

def getLongDiff(x,z):
    return tile2long(x+1,z)-tile2long(x,z)


def getLatDiff(y,z):
    return tile2lat(y+1,z)-tile2lat(y,z)


def getlatLongFromPoint(cx,cy,x,y,z):
    #lngDiff : 256 = lng : cx
    #latDiff : 256 = lat : cy
    lng = tile2long(x,z)
    lat = tile2lat(y+1,z)

    lng += cx * getLongDiff(x,z) / 256
    lat -= cy * getLatDiff(y,z) / 256
    return[lng,lat]

def makedir(name):
    if not os.path.exists(name):
        os.makedirs(name)

def xy2latlong(_area,_maptype,_zoom,_type):
    
    jsonFiles = os.listdir('./xyGeoJson/'+_area+"/"+_maptype+"/"+_zoom+"/"+_type+"/")

    cnt = 0
    makedir("./geoJson/"+_area+"/"+_maptype+"/"+_zoom+"/"+_type)
    for name in jsonFiles:
        with open('./xyGeoJson/'+_area+"/"+_maptype+"/"+_zoom+"/"+_type+"/"+name) as data_file:    
            data = json.load(data_file)

        sp = name.split('_')
        
        zoom = int(sp[0])
        x = int(sp[1])
        y = int(sp[2].split('.')[0])
        for i in range(len(data["features"])):
            for j in range(len(data["features"][i]["geometry"]["coordinates"])):
                for k in  range(len(data["features"][i]["geometry"]["coordinates"][j])):
                    cur = data["features"][i]["geometry"]["coordinates"][j][k]
                    data["features"][i]["geometry"]["coordinates"][j][k] = getlatLongFromPoint(cur[0],cur[1],x,y,zoom)

        
        with open('./geoJson/'+_area+"/"+_maptype+"/"+_zoom+"/"+_type+"/"+name, 'w') as outfile:
            json.dump(data, outfile)
        cnt += 1
        print (name +' converted to geojson {0:.1f}%'.format(cnt / len(jsonFiles) * 100))  

    print ("done")
    
if __name__ == "__main__":
    area=sys.argv[1]
    maptype=sys.argv[2]
    zoom=sys.argv[3]
    _type = sys.argv[4]
    xy2latlong(area,maptype,zoom,_type)


