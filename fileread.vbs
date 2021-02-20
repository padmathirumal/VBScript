'Send Keys,
'

set WshShell = CreateObject("WScript.Shell")
WshShell.Run "cmd"
WshShell.AppActivate "cmd"
WshShell.SendKeys "keytool -genkey -alias mydomain -keyalg RSA -keystore keystore.jks  -keysize 2048"
WshShell.SendKeys "~"
WScript.Sleep(3000)
WshShell.SendKeys "ChangeIt"
WshShell.SendKeys "{ENTER}"
WScript.Sleep(3000)
WshShell.SendKeys "ChangeIt"
WshShell.SendKeys "{ENTER}"
WScript.Sleep(3000)
WshShell.SendKeys "{ENTER}"
WScript.Sleep(1000)
WshShell.SendKeys "{ENTER}"
WScript.Sleep(1000)
WshShell.SendKeys "{ENTER}"
WScript.Sleep(1000)
WshShell.SendKeys "{ENTER}"
