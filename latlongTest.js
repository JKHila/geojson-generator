function tile2long(x,z) {
    return (x/Math.pow(2,z)*360-180);
}

function tile2lat(y,z) {
    var n=Math.PI-2*Math.PI*y/Math.pow(2,z);
    return (180/Math.PI*Math.atan(0.5*(Math.exp(n)-Math.exp(-n))));
}
function getLongDiff(x,z){
    return tile2long(x,z)-tile2long(x-1,z);
}

function getLatDiff(y,z){
    return tile2lat(y,z)-tile2lat(y+1,z);
}

function getlatLongFromPoint(px,py,x,y,z){
    var long = tile2long(x,z);
    var lat = tile2lat(y,z);

    long += px * getLongDiff(x,z) / 256;
    lat -= py * getLatDiff(y,z) / 256;
    console.log(long);
    console.log(lat);
}

getlatLongFromPoint(128,128,111585,51219,17);


