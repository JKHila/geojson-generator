
from xml.dom import minidom
import json

config = {
  'svg_file' : './outputsvg/17_111583_51217.svg',
  'js_file'  : 'ddfsdfmap.js',
  'js_var'   : 'svgMap'
}

svg = minidom.parse(config['svg_file'])
paths = svg.getElementsByTagName('path')
items = {}

for node in paths:
  if node.getAttributeNode('id'):
    path_id = str(node.getAttributeNode('id').nodeValue)
    path = str(node.getAttributeNode('d').nodeValue)
    items[path_id] = path
	
json = json.dumps(items, indent=2)

f = open(config['js_file'], 'w')
f.write('var %s = ' % config['js_var'])
f.write(json)
f.close()