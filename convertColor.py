'''
from PIL import Image
import numpy as np

img_file = img_file.convert('RGBA')
data = np.array(img_file)
converted = []
converted = np.where(data == 0, 116, 194)
img_file = Image.fromarray(converted)
img_file.show()
#img_file.save("../test.png")
'''
from PIL import Image
import sys

img = Image.open("/home/dabeeo/Documents/geojson_generator/suwon/ML/21/18_223606_101780.png")
img = img.convert("RGBA")

pixdata = img.load()

# Clean the background noise, if color != white, then set to black.

for y in range(img.size[1]):
    for x in range(img.size[0]):
        if pixdata[x, y] == (0, 116, 194, 255):
            pixdata[x, y] = (0, 0, 0, 255)
        else:
            pixdata[x, y] = (255, 255, 255, 255)            

#img.save("../test.png")

img.show()