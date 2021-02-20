keytool -genkey -alias padma2 -dname cn=padma2 -keyalg RSA -keystore keystore.jks  -storepass passsword -keysize 2048
'VBScript Example
Set WshShell = WScript.CreateObject("WScript.Shell")

WshShell.Run "c:\windows\notepad.exe"

' add delay here
WScript.Sleep(5000)

WshShell.AppActivate "Notepad"

WshShell.SendKeys "Hello World!"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "abc"
WshShell.SendKeys "{CAPSLOCK}"
WshShell.SendKeys "def"