httpEventHandler = CREATEOBJECT("MyHttpEvents")
loHttp = CreateObject("Chilkat_9_5_0.Http")
EVENTHANDLER(loHttp,httpEventHandler)

DEFINE CLASS MyHttpEvents AS SESSION OLEPUBLIC
IMPLEMENTS _IChilkatHttpEvents IN "Chilkat_9_5_0.Http"

PROCEDURE _IChilkatHttpEvents_AbortCheck(abort As Number)
? "AbortCheck"
ENDPROC

PROCEDURE _IChilkatHttpEvents_BinaryData(data As Variant)
? "BinaryData"
ENDPROC

PROCEDURE _IChilkatHttpEvents_BeginReceive
? "HttpBeginReceive"
ENDPROC

PROCEDURE _IChilkatHttpEvents_BeginSend
? "HttpBeginSend"
ENDPROC

PROCEDURE _IChilkatHttpEvents_HttpChunked
? "HttpChunked"
ENDPROC

PROCEDURE _IChilkatHttpEvents_EndReceive(success As Number)
? "HttpEndReceive"
ENDPROC

PROCEDURE _IChilkatHttpEvents_EndSend(success As Number)
? "HttpEndSend"
ENDPROC

PROCEDURE _IChilkatHttpEvents_HttpRedirect(originalUrl As String, redirectUrl As String, abort As Number)
? "HttpRedirect"
ENDPROC

PROCEDURE _IChilkatHttpEvents_PercentDone(pctDone As Number, abort As Number)
? "PercentDone"
ENDPROC

PROCEDURE _IChilkatHttpEvents_ProgressInfo(name As String, value As String)
? "ProgressInfo"
ENDPROC

PROCEDURE _IChilkatHttpEvents_ReceiveRate(byteCount As Number, bytesPerSec As Number)
? "ReceiveRate"
ENDPROC

PROCEDURE _IChilkatHttpEvents_SendRate(byteCount As Number, bytesPerSec As Number)
? "SendRate"
ENDPROC

PROCEDURE _IChilkatHttpEvents_TaskCompleted(task As Generic)
? "TaskCompleted"
ENDPROC

PROCEDURE _IChilkatHttpEvents_TextData(data As String)
? "TextData"
ENDPROC


ENDDEFINE
