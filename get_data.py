'''
Author  : DABEEO, Inc. (Noor)
Email   : noor.ullah@dabeeo.com
Subject : Machine Learning data
Date    : 09/09/2017
Description : The script download data both satellite and map tiles from the http://style.blinking.kr:7000/NGI. 
'''

import urllib.request
import glob
import os
from shutil import copyfile
import requests
import shutil
import sys
from bs4 import BeautifulSoup
from os.path import normpath, basename

 

def listFD(url, ext=''):
    page = requests.get(url).text
    soup = BeautifulSoup(page, 'html.parser')
    return [url + '/' + node.get('href') for node in soup.find_all('a') if node.get('href').endswith(ext)]

 
url  = 'http://style.blinking.kr:7000/NGI/'
if len(sys.argv) < 4:
    print("Usage: python get_data.py area[seoul,suwon] maptype[sat,map] zoom[13-18] eg: python get_data.py seoul map 18")
else:
    area=sys.argv[1]
    maptype=sys.argv[2]
    zoom=sys.argv[3]
    if not area in ["seoul","suwon"]:
        print("Area argument wrong")
        exit(0)

    if not os.path.exists(area):
        os.makedirs(area)
        os.makedirs(area+'/sat')
        os.makedirs(area+'/map')
    if not os.path.exists(area+'/sat/'+zoom):
        os.makedirs(area+'/sat/'+zoom)
        os.makedirs(area+'/map/'+zoom)
        os.makedirs(area+'/ML/'+zoom)

    print("Downlaoding data of",area,maptype,"at zoom",zoom )
    xtile = listFD("http://style.blinking.kr:7000/NGI/"+area+"/"+maptype+"/"+zoom,"/")
    del xtile[0]
    for x in xtile:
        x_name=basename(normpath(x.replace("http://style.blinking.kr:7000","")))
        ytile=listFD(str(x),".png")
        for y in ytile:
            print("Requesting....",y)
            y_name=os.path.basename(y)
            response = requests.get(y, stream=True)
            with open(area+"/"+maptype+"/"+zoom+"/"+zoom+"_"+x_name+"_"+y_name, 'wb') as out_file:
                shutil.copyfileobj(response.raw, out_file)
            del response
 