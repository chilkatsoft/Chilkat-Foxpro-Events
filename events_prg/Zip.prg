zipEventHandler = CREATEOBJECT("MyZipEvents")
loZip = CreateObject("Chilkat_9_5_0.Zip")
EVENTHANDLER(loZip,zipEventHandler)

DEFINE CLASS MyZipEvents AS SESSION OLEPUBLIC
IMPLEMENTS _IChilkatZipEvents IN "Chilkat_9_5_0.Zip"

PROCEDURE _IChilkatZipEvents_AbortCheck(abort As Number)
? "AbortCheck"
ENDPROC

PROCEDURE _IChilkatZipEvents_AddFilesBegin
? "AddFilesBegin"
ENDPROC

PROCEDURE _IChilkatZipEvents_AddFilesEnd
? "AddFilesEnd"
ENDPROC

PROCEDURE _IChilkatZipEvents_BinaryData(data As Variant)
? "BinaryData"
ENDPROC

PROCEDURE _IChilkatZipEvents_DirToBeAdded(path As String, nSkip As Number)
? "DirToBeAdded"
ENDPROC

PROCEDURE _IChilkatZipEvents_FileAdded(path As String, fileSize As Number, abort As Number)
? "FileAdded"
ENDPROC

PROCEDURE _IChilkatZipEvents_FileUnzipped(path As String, compressedSize As Number, fileSize As Number, abort As Number)
? "FileUnzipped"
ENDPROC

PROCEDURE _IChilkatZipEvents_FileZipped(path As String, fileSize As Number, compressedSize As Number, abort As Number)
? "FileZipped"
ENDPROC

PROCEDURE _IChilkatZipEvents_PercentDone(pctDone As Number, abort As Number)
? "PercentDone"
ENDPROC

PROCEDURE _IChilkatZipEvents_ProgressInfo(name As String, value As String)
? "ProgressInfo"
ENDPROC

PROCEDURE _IChilkatZipEvents_SkippedForUnzip(path As String, compressedSize As Number, fileSize As Number, isDirectory As Number)
? "SkippedForUnzip"
ENDPROC

PROCEDURE _IChilkatZipEvents_TaskCompleted(task As Generic)
? "TaskCompleted"
ENDPROC

PROCEDURE _IChilkatZipEvents_TextData(data As String)
? "TextData"
ENDPROC

PROCEDURE _IChilkatZipEvents_ToBeAdded(path As String, fileSize As Number, nSkip As Number)
? "ToBeAdded"
ENDPROC

PROCEDURE _IChilkatZipEvents_ToBeUnzipped(path As String, compressedSize As Number, fileSize As Number, nSkip As Number)
? "ToBeUnzipped"
ENDPROC

PROCEDURE _IChilkatZipEvents_ToBeZipped(path As String, fileSize As Number, nSkip As Number)
? "ToBeZipped"
ENDPROC

PROCEDURE _IChilkatZipEvents_UnzipBegin
? "UnzipBegin"
ENDPROC

PROCEDURE _IChilkatZipEvents_UnzipEnd
? "UnzipEnd"
ENDPROC

PROCEDURE _IChilkatZipEvents_WriteZipBegin
? "WriteZipBegin"
ENDPROC

PROCEDURE _IChilkatZipEvents_WriteZipEnd
? "WriteZipEnd"
ENDPROC


ENDDEFINE
