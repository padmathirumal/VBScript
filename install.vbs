Set args = Wscript.Arguments
password = args.Item(0)

'VBScript Example
Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "C:\Users\padmathirumal\Downloads\Geekbench-5.3.1-WindowsSetup.exe"

' add delay here
WScript.Sleep(2000)

WshShell.SendKeys "{ENTER}"

WScript.Sleep(2000)

WshShell.SendKeys "{ENTER}"

WScript.Sleep(2000)

WshShell.SendKeys "{ENTER}"

WScript.Sleep(2000)

WshShell.SendKeys "{BACKSPACE}"

WshShell.SendKeys password

WScript.Sleep(2000)
