import psycopg2
import sys
import json
import os
 
def sendQuery(sql,local):
    #Define our connection string
    #conn_string = "host='localhost' dbname='simplify_test' user='postgres' password='1234'"

	# get a connection, if a connect cannot be made an exception will be raised here
    # conn = psycopg2.connect(conn_string)
    if local:
        _host = "localhost"
        _user = "postgres"
        _password = "1234"
        _db = "simplify"
    else:
        _host = "192.168.0.240"
        _user = "beemap"
        _password = "dabeeo0228"
        _db = "simplify"
    conn = psycopg2.connect(host=_host, user=_user, password=_password, database=_db)

    # conn.cursor will return a cursor object, you can use this cursor to perform queries
    cursor = conn.cursor()

    cursor.execute(sql)
    
    conn.commit()
    cursor.close()

def getJson(name,path):
    with open(path+name) as data_file:
        data = json.load(data_file)
    return data

def makePolygon(data,i): #각 geometry 안에 있는 coordinate의 x,y추출해 폴리곤으로 만듬
    polStr = "POLYGON(("
    for j in range(len(data["features"][i]["geometry"]["coordinates"])):
        for k in  range(len(data["features"][i]["geometry"]["coordinates"][j])):
            cur = data["features"][i]["geometry"]["coordinates"][j][k]
            polStr += str(cur[0])+" "+str(cur[1])+","
    polStr = polStr[0:len(polStr)-1] 
    polStr +="))"

    return  polStr

def sendDB(area,maptype,zoom,tolerance,_type,local,dbNum):
    if _type =="road":
        oDbName = "origin_road"
    elif _type == "building" or _type == "building2":
        oDbName = "origin_building"

    sendQuery("DELETE FROM public."+oDbName,local) #init db
    sendQuery("DELETE FROM public.simplify"+dbNum,local) #init db   
    path = './geoJson/'+area+"/"+maptype+"/"+zoom+"/"+_type+"/"
    jsonFiles = os.listdir(path)
    cnt = 0
    idx = 0    
    oQuery = "INSERT INTO public."+oDbName+"(id, geom)"
    oQuery += "VALUES "
    sQuery = "INSERT INTO public.simplify"+dbNum+"(id, geom)"
    sQuery += "VALUES "
    for name in jsonFiles:
        data = getJson(name,path)

        #GeomFromGeoJson함수이용            
        for i in range(len(data['features'])):
            data["features"][i]["geometry"]["crs"]={"type":"name"}
            data["features"][i]["geometry"]["crs"]["properties"]={"name":"EPSG:4326"}
            jsonStr = json.dumps(data["features"][i]["geometry"])
            #print (jsonStr)
            #origin
            oQuery += "("+ str(idx) +", ST_GeomFromGeoJSON('"+ jsonStr +"')),"
            
            #simplify
            sQuery += "("+ str(idx) +", ST_SimplifyPreserveTopology(ST_GeomFromGeoJSON('"+ jsonStr +"'),"+str(tolerance)+")),"
            
            idx += 1
        cnt += 1
        print (name +' query saved {0:.1f}%'.format(cnt / len(jsonFiles) * 100))  
        '''
        
        for i in range(len(data['features'])): #폴리곤 하나씩 쿼리 보냄
            polStr = makePolygon(data,i)
            query += "INSERT INTO public.simple_test(idx, geom)"
            query += "VALUES ("+ str(idx) +", ST_GeomFromText('"+ polStr +"'));"
            
            query += "INSERT INTO public.st_simplify(idx, geom)"
            query += "VALUES ("+ str(idx) +",ST_SimplifyPreserveTopology('"+ polStr +"',30));"
            idx += 1
        cnt += 1    
        print (name +' query saved {0:.1f}%'.format(cnt / len(jsonFiles) * 100))  
        '''
    
    oQuery = oQuery[0:len(oQuery)-1] + ";"
    sQuery = sQuery[0:len(sQuery)-1] + ";"

    sQuery += "Delete From simplify"+dbNum
    sQuery += " Where ST_Area(geom) * Power(10,10) < 20"

    sendQuery(oQuery,local)
    print ("or_done")    
    sendQuery(sQuery,local)    
    print ("sp_done")

if __name__ == "__main__":
    area=sys.argv[1]
    maptype=sys.argv[2]
    zoom=sys.argv[3]
    tolerance = sys.argv[4]
    _type = sys.argv[5]
    if len(sys.argv) > 6 and sys.argv[6] == "-l":
        local = True
        if len(sys.argv) > 7:
            dbNum = sys.argv[7]
    else:
        local = False
        dbNum = "_"+_type

    sendDB(area,maptype,zoom,tolerance,_type,local,dbNum,)
                