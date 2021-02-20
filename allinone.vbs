keytool -genkey -alias padma1 -dname cn=padma1 -keyalg RSA -keystore padma1.jks -storepass passsword -keysize 2048

keytool -keystore padma1.jks -certreq -alias padma1 -storepass passsword -keyalg rsa -file padma1.csr



keytool -genkey -alias padma2 -dname cn=padma2 -keyalg RSA -keystore padma2.jks -storepass passsword -keysize 2048

keytool -keystore padma2.jks -certreq -alias padma2 -storepass passsword -keyalg rsa -file padma2.csr
Set objExcel = CreateObject("Excel.Application")
Set objWorkbook = objExcel.Workbooks.Open("C:\Users\\padmathirumal\\vbscript\\keytool-commands-4.xlsx", , True)
Set FileSysObj=CreateObject("Scripting.FileSystemObject")
Set WshShell = WScript.CreateObject("WScript.Shell")
' WshShell.Run "cmd"

intRow = 1

'Do Until objExcel.Cells(intRow,1).Value = ""
While intRow < 4

	'go to portal and do whatever 
	dnName = objExcel.Cells(intRow, 1).Value
	 Wscript.Echo dnName 
	
	genKeyCommand = objExcel.Cells(intRow, 2).Value
	 Wscript.Echo genKeyCommand 
	
	csrCommand = objExcel.Cells(intRow, 3).Value
	Wscript.Echo csrCommand 

	WshShell.AppActivate "cmd"
	
	WshShell.SendKeys genKeyCommand
	WshShell.SendKeys "{ENTER}"
	WScript.Sleep(10)
	WshShell.SendKeys "{ENTER}"
	WScript.Sleep(2000)

	WshShell.SendKeys csrCommand
	WshShell.SendKeys "{ENTER}"
	WScript.Sleep(2000)
	
	csrFileName = "C:\Users\\padmathirumal\\vbscript\\" + dnName + ".csr"
	' Wscript.Echo csrFileName
	
	If FileSysObj.FileExists(csrFileName) Then

		Set inputFile = FileSysObj.OpenTextFile(csrFileName, 1)
		certContent = inputFile.ReadAll
		inputFile.close
		
		Wscript.Echo certContent  
		' go to portal
		' paste
		' submit
		
	End If
	
	intRow = intRow + 1
	
Wend
'Loop