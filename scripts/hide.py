#Hiding Text in an image
from PIL import Image #image library
import binascii #allows for conversions
import optparse #allows for passing, and terminal access

def rgb2hex(r, g, b):
    # converting each value to hex {r}{b}{g}
	return '#{:02x}{:02x}{:02x}'.format(r, g, b)

def hex2rgb(hexcode):
    #takes a hex value and maps hexcode (taking out # in index 1)
    #decodes from hex >> rgb
	return tuple(map(ord, hexcode[1:].decode('hex')))

def str2bin(message):
    #takes binary value of the hexcode for message (base 16)
	binary = bin(int(binascii.hexlify(message), 16))
    #strips chars added at the front two index's
	return binary[2:]

def bin2str(binary):
    #unhexing the message, takes value adds 0b to front and uses base 2
	message = binascii.unhxlify('%x' % (int('0b'+binary,2)))
	return message

def encode(hexcode, digit):
    #if the last index is in this list >> replace index with the digit stored then return
	if hexcode[-1] in ('0','1', '2', '3', '4', '5'):
		hexcode = hexcode[:-1] + digit
		return hexcode
	else:
		return None

def decode(hexcode):
    #If last digit in hexcode is is a 0,1, we are going to extract data (takeout digit)
	if hexcode[-1] in ('0', '1'):
		return hexcode[-1]
	else:
		return None

#hide function
def hide(filename, message):
    #creates object image (from file)
	img = Image.open(filename)
    #converts message to binary (must pass on delimiter to indicate where message ends)
	binary = str2bin(message) + '1111111111001110'
	if img.mode in ('RGBA'):
		img = img.convert('RGBA')
        #grabs pixels from image
		datas = img.getdata()
		#stores the pixel data
		newData = []
        #current digit
		digit = 0
        #just a value to store
		temp = ''
        #for each pixel in the image
		for item in datas:
			if (digit < len(binary)): #then we are going to store pixel data
                #passing in items for the R, G, B >> item 1,2,3 respectively and setting to new pixel data
				newpix = encode(rgb2hex(item[0],item[1],item[2]),binary[digit])
                #if data fails store natural pixel (not altered)
				if newpix == None:
					newData.append(item)
                #we want to insert new pixel in place of old one
				else:
					r, g, b = hex2rgb(newpix)
					newData.append((r,g,b,255))
					digit += 1 #itterate to next digit
			else:
                #if index is past just append current pixel
				newData.append(item)
        #create new image
		img.putdata(newData)
        #save as same file name (NOTE: will change jpgs to png)
		img.save(filename, "PNG")
		return "Completed!"
    #if fails, identify that image mode is not able to be used
	return "Incorrect Image Mode, Couldn't Hide"

#retrieve function
def retr(filename):
    #grabs image by file name
	img = Image.open(filename)
    #sets empty variable for binary (will be filled with retrieved data)
	binary = ''
	#if data is RGBA convert to RGBA (this is a check)
	if img.mode in ('RGBA'):
		img = img.convert('RGBA')
        #grab image data
		datas = img.getdata()

        #itterate through each pixel in data
		for item in datas:
            #pass in R G B >> decode this using rgb2hex()
			digit = decode(rgb2hex(item[0],item[1],item[2]))
            #if we didnt find data, use normal pixel
			if digit == None:
				pass
            #pass in digit, if binary is using delimiter, it tells the data this is end of message
			else:
				binary = binary + digit
				if (binary[-16:] == '1111111111001110'):
					print "Encoded Message:" + '\n'
                    #return all binary (as the message) excluding delimiter
					return bin2str(binary[:-16]) + '\n'
        #if goes wrong return default image
		return bin2str(binary)
    #GIGO check
	return "Incorrect Image Mode, Couldn't Retrieve"

def Main():
        #creates instance of optparse called parser
        #creating syntax to use script
        parser = optparse.OptionParser('usage %prog '+\
            '-e/-d <target file>')
        #adding options to tell whether to encode or decode
        parser.add_option('-e', dest='hide', type='string', \
            help='target picture path to hide text')
        parser.add_option('-d', dest='retr', type='string', \
            help='target picture path to retrieve text')

        #takes input from user (message to hide)
        (options, args) = parser.parse_args()
        if (options.hide != None):
            lines = []
            print "Enter data to be encoded:        Type 'END' to end message"
            while True:
                line = raw_input("")
                if line == "END":
                     break
                else:
                    lines.append(line)
                text = '\n'.join(lines)


            print hide(options.hide, text)
        elif (options.retr != None):
                    print retr(options.retr)
        else:
            #error message and exit
            print parser.usage
            exit(0)


#initiating main
if __name__ == '__main__':
	Main()
e
