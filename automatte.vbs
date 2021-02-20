Dim oExcel,oWorkBook,oSheet,MyDataArray(),strFilePath,strSheetName
Set oExcel = CreateObject("Excel.Application")
Set oWorkBook = oExcel.Workbooks.open("C:\Users\padmathirumal\vbscript\keytool-commands.xlsx")
'VBScript Example
Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "cmd"
WshShell.AppActivate "cmd"

intRow = 1
WScript.Sleep(2000)

Do Until oExcel.Cells(intRow,1).Value = ""
	command = oExcel.Cells(intRow, 1).Value
	MsgBox command
	WshShell.SendKeys command
	WshShell.SendKeys "{ENTER}"
	WScript.Sleep(10000)
	intRow = intRow + 1
Loop

oExcel.Quit