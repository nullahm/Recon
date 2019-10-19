import requests
from bs4 import BeautifulSoup,Comment
import sys

filename = sys.argv[1]                                                                      #Taking input a wordlist of URL to be searched.
with open(filename) as f:
    lines = f.readlines()
for x in range(0,len(lines)):
    
    final = lines[x].replace("\n","")
    print("========================Data for "+final+"============================")
    res = requests.get(final)
    soup = BeautifulSoup(res.content,'html.parser')
    ref = soup.find_all('a')
    print("COMMENTS")
    comments = soup.findAll(text=lambda text:isinstance(text, Comment))
    print("Found "+str(len(comments))+" comments")
    for x in range(0,len(comments)):
        print comments[x]                                                                   #Print all the comments from the page (If Any)
    print("\n\n\nKeyword API")
    api = soup.body.findAll(text='api')
    API = soup.body.findAll(text='API')
    API_KEY = soup.body.findAll(text='API_KEY')
    api_key = soup.body.findAll(text="api_key")
    api_key.append(api)
    API.append(api)
    API_KEY.append(api)
    print("Found "+str(len(api))+" keywords matching API")
    for x in range(0,len(api)):
        print(api[x])                                                                       #Print all the keywords named API/API_KEY from the page (If Any)
    print("\n\n\nKeyword Password")
    passw = soup.body.findAll(text='password')
    password = soup.body.findAll(text='Password')
    password.append(passw)
    print("Found "+str(len(passw))+" keywords matching Password")
    for x in range(0,len(passw)):
        print(passw[x])                                                                     #Print all the keyword names password from the page (If Any)
    print("\n\n\nKeyword Admin")
    admin = soup.body.findAll(text='admin')
    admin1 = soup.body.findAll(text='Admin')
    admin1.append(admin)
    print("Found "+str(len(admin))+" keywords matching Admin\n\n")
    for x in range(0,len(admin)):
        print(admin[x])                                                                     #Print all the keyword names Admin/admin from the page (If Any)
    
