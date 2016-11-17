sFtpEventHandler = CREATEOBJECT("MySFtpEvents")
loSFtp = CreateObject("Chilkat_9_5_0.SFtp")
EVENTHANDLER(loSFtp,sFtpEventHandler)

DEFINE CLASS MySFtpEvents AS SESSION OLEPUBLIC
IMPLEMENTS _IChilkatSFtpEvents IN "Chilkat_9_5_0.SFtp"

PROCEDURE _IChilkatSFtpEvents_AbortCheck(abort As Number)
? "AbortCheck"
ENDPROC

PROCEDURE _IChilkatSFtpEvents_BinaryData(data As Variant)
? "BinaryData"
ENDPROC

PROCEDURE _IChilkatSFtpEvents_DownloadRate(byteCount As Number, bytesPerSec As Number)
? "DownloadRate"
ENDPROC

PROCEDURE _IChilkatSFtpEvents_PercentDone(pctDone As Number, abort As Number)
? "PercentDone"
ENDPROC

PROCEDURE _IChilkatSFtpEvents_ProgressInfo(name As String, value As String)
? "ProgressInfo"
ENDPROC

PROCEDURE _IChilkatSFtpEvents_TaskCompleted(task As Generic)
? "TaskCompleted"
ENDPROC

PROCEDURE _IChilkatSFtpEvents_TextData(data As String)
? "TextData"
ENDPROC

PROCEDURE _IChilkatSFtpEvents_UploadRate(byteCount As Number, bytesPerSec As Number)
? "UploadRate"
ENDPROC


ENDDEFINE
