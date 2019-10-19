# Using a pre-defined dictionary this file checks for 
# various possible admin login pages by appending the words to url

import re
import sys
import requests
f=open("wordlist_login.txt", "r");
url=sys.argv[1]
contents=f.read()
contents=re.sub('[\']+', '', contents)
contents = contents.split(',')
for i in contents:
	response = requests.get(url+"/"+i)

	if (response.status_code==200):
		body=response.content
		body=body.lower()
	
		arr = ['page not found', '404','400','401','403','500']

		if any(c in body for c in arr):
    			print "[+]Page not found:?"+url+"/"+i
		else:
				print "[+]Found Page=>"+url+"/"+i


	else:
		print "[+]Page not found:?"+url+"/"+i
