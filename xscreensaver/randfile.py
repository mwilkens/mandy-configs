import os, random
filename = "/home/mandy/Documents/texts/" + random.choice(os.listdir("/home/mandy/Documents/texts/"))
with open(filename) as f: print f.read().decode("ascii", errors="ignore").encode()
