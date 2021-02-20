Set FileSysObj=CreateObject("Scripting.FileSystemObject")
Const ForReading = 1
objStartFolder = "C:\Users\Padmathirumal\vbscript\"
Set objFolder = FileSysObj.GetFolder(objStartFolder)
Set colFiles = objFolder.Files

Set objExcel = CreateObject("Excel.Application") 
objExcel.Visible = True 
Set objWorkbook = objExcel.Workbooks.Add 
rowNumber = 1

For Each objFile in colFiles
	if instr(objFile.Name,".csr") then
		Wscript.Echo objFile.Name 
	
		Set inputFile = FileSysObj.OpenTextFile("client.csr", ForReading, True)
		cert = inputFile.ReadAll
		inputFile.close
		
		objExcel.Cells(rowNumber,1).Value = objFile.Name
		objExcel.Cells(rowNumber,2).Value = cert
		rowNumber = rowNumber + 1
	end if
Next

objWorkbook.SaveAs "C:\Users\Padmathirumal\vbscript\certs.xlsx"
objWorkbook.Close 
objExcel.Quit
Set objExcel = Nothing
Set objWorkbook = Nothing
