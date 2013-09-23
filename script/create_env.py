#!/usr/bin/env python
# This Script determines the environment variables for the vagrant boxes

# Imports
import urllib2
import json


# Definitions
DEBIAN_MIRRORURL="http://cdimage.debian.org/debian-cd/current/amd64/iso-cd"
DEBIAN_SHAFILE=DEBIAN_MIRRORURL+"/SHA256SUMS"
OUTPUTFILE = "./variables.json"

# Do not alter below here, there be dragons
def writeJson(metadata):
	dictDebian={}
	dictDebian["debian_iso_url"] = DEBIAN_MIRRORURL + "/" + metadata[0]
	dictDebian["debian_iso_checksum"] = metadata[1]
	with open(OUTPUTFILE, 'wb') as fp:
		json.dump(dictDebian, fp)

def getLatestIsoUrl():
	url = urllib2.urlopen(DEBIAN_SHAFILE)
	for line in url.readlines():
		if "netinst" in line:
			SHA256SUM = line.split(" ")[0]
			FILENAME = line.split(" ")[2][0:-1]
			break
	return FILENAME, SHA256SUM

def __main__():
	metadata=getLatestIsoUrl()
	writeJson(metadata)




__main__()
