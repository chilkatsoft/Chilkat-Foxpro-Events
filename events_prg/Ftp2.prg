ftp2EventHandler = CREATEOBJECT("MyFtp2Events")
loFtp2 = CreateObject("Chilkat_9_5_0.Ftp2")
EVENTHANDLER(loFtp2,ftp2EventHandler)

DEFINE CLASS MyFtp2Events AS SESSION OLEPUBLIC
IMPLEMENTS _IChilkatFtp2Events IN "Chilkat_9_5_0.Ftp2"

PROCEDURE _IChilkatFtp2Events_AbortCheck(abort As Number)
? "AbortCheck"
ENDPROC

PROCEDURE _IChilkatFtp2Events_BeginDownloadFile(path As String, nSkip As Number)
? "BeginDownloadFile"
ENDPROC

PROCEDURE _IChilkatFtp2Events_BeginUploadFile(path As String, nSkip As Number)
? "BeginUploadFile"
ENDPROC

PROCEDURE _IChilkatFtp2Events_BinaryData(data As Variant)
? "BinaryData"
ENDPROC

PROCEDURE _IChilkatFtp2Events_DownloadRate(byteCount As Number, bytesPerSec As Number)
? "DownloadRate"
ENDPROC

PROCEDURE _IChilkatFtp2Events_EndDownloadFile(path As String, byteCount As Number)
? "EndDownloadFile"
ENDPROC

PROCEDURE _IChilkatFtp2Events_EndUploadFile(path As String, byteCount As Number)
? "EndUploadFile"
ENDPROC

PROCEDURE _IChilkatFtp2Events_PercentDone(pctDone As Number, abort As Number)
? "PercentDone"
ENDPROC

PROCEDURE _IChilkatFtp2Events_ProgressInfo(name As String, value As String)
? "ProgressInfo"
ENDPROC

PROCEDURE _IChilkatFtp2Events_TaskCompleted(task As Generic)
? "TaskCompleted"
ENDPROC

PROCEDURE _IChilkatFtp2Events_TextData(data As String)
? "TextData"
ENDPROC

PROCEDURE _IChilkatFtp2Events_UploadRate(byteCount As Number, bytesPerSec As Number)
? "UploadRate"
ENDPROC

PROCEDURE _IChilkatFtp2Events_VerifyDeleteDir(path As String, nSkip As Number)
? "VerifyDeleteDir"
ENDPROC

PROCEDURE _IChilkatFtp2Events_VerifyDeleteFile(path As String, nSkip As Number)
? "VerifyDeleteFile"
ENDPROC

PROCEDURE _IChilkatFtp2Events_VerifyDownloadDir(path As String, nSkip As Number)
? "VerifyDownloadDir"
ENDPROC

PROCEDURE _IChilkatFtp2Events_VerifyUploadDir(path As String, nSkip As Number)
? "VerifyUploadDir"
ENDPROC


ENDDEFINE
