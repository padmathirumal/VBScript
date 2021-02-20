Dim plainText = InputBox("Enter the plain text:")
Dim password  = InputBox("Enter the password:")

Dim wrapper As New Simple3Des(password)
Dim cipherText As String = wrapper.EncryptData(plainText)

MsgBox("The cipher text is: " & cipherText)
My.Computer.FileSystem.WriteAllText("cipherText.txt", cipherText, False)