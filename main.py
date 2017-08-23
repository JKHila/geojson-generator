from png2xyGeojson import *
from xy2latlong import *
from postgresql_conn import *
import sys

def main():
    area=sys.argv[1]
    maptype=sys.argv[2]
    zoom=sys.argv[3]
    tolerance = sys.argv[4]
    _type = sys.argv[5]
    if len(sys.argv) > 6 and sys.argv[6] == "True":
        local = True
        if len(sys.argv) > 7:
            dbNum = sys.argv[7]
    else:
        local = False
        dbNum = "_"+_type
    local = sys.argv[6]


    makeGeoJson(area,maptype,zoom,_type)
    xy2latlong(area,maptype,zoom,_type)
    sendDB(area,maptype,zoom,tolerance,_type,local,dbNum)

main()