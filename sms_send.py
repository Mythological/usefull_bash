import requests
import sys

tel = sys.argv[1]
text = sys.argv[2]

#url = "https://smsc.ru/sys/send.php?login=LOGIN&psw=PASSWORD&phones={}&mes={}".format(tel,text)
url = "http://172.10.1.150/cgi/WebCGI?1500101=account=LOGIN&password=PASSWORD&port=4&destination={}&content={}".format(tel,text)
#print url
data = requests.get(url)
