strMessage =Inputbox("Url Girin Ornek; http://connect.adobe.com.tr/lc4yj754ke3v        zip Olarak içeriğin tamamını indirecektir.","Input Required")
WScript.CreateObject ("WSCript.shell").run "chrome -url "&strMessage + "/output/filename.zip?download=zip"
