import os
import pathlib
from PIL import Image




def main():
    path = pathlib.Path(__file__).parent.resolve()
    directory = os.fsencode(path)

    text = open(str(path) + "\\" + "emoji_colors.json", 'w+')
    text.write("{\n")

    for file in os.listdir(directory):
        filename = os.fsdecode(file)
        
        if filename.endswith(".png"):
            key = os.path.splitext(filename)[0]
            img = Image.open(filename)
            img = img.resize((1,1))
            pix = img.load()
            val = pix[0,0]
            text.write("\t\"" +key+ "\": [" +str(val[0])+ ", " +str(val[1])+ ", " +str(val[2])+ "],\n")

    text.write("}\n")
    print("DONE!")




main()
