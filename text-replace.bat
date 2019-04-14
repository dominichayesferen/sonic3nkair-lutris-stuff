Const ForReading = 1    
Const ForWriting = 2

strFileName = "C:\sonic3air_game\config.json"
strOldText = Wscript.Arguments(0)
strNewText = Wscript.Arguments(1)

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile(strFileName, ForReading)
strText = objFile.ReadAll
objFile.Close

strNewText = Replace(strText, strOldText, strNewText)
Set objFile = objFSO.OpenTextFile(strFileName, ForWriting)
objFile.Write strNewText  'WriteLine adds extra CR/LF
objFile.Close
