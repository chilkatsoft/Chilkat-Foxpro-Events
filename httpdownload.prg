

LOCAL loHttp
LOCAL lnSuccess
LOCAL lcLocalFilePath

httpEventHandler = CREATEOBJECT("MyHttpEvents")

loHttp = CreateObject('Chilkat_9_5_0.Http')
EVENTHANDLER(loHttp,httpEventHandler)

*  Any string unlocks the component for the 1st 30-days.
lnSuccess = loHttp.UnlockComponent("Anything for 30-day trial")
IF (lnSuccess <> 1) THEN
    ? loHttp.LastErrorText
    RELEASE loHttp
    CANCEL
ENDIF

*  Download an XML file:
lcLocalFilePath = "c:/aaworkarea/php-5.6.28-src.zip"
lnSuccess = loHttp.Download("http://windows.php.net/downloads/releases/php-5.6.28-src.zip",lcLocalFilePath)
IF (lnSuccess <> 1) THEN
    ? loHttp.LastErrorText
    RELEASE loHttp
    CANCEL
ENDIF

? "OK!"


RELEASE loHttp




DEFINE CLASS MyHttpEvents AS SESSION OLEPUBLIC
IMPLEMENTS _IChilkatHttpEvents IN "Chilkat_9_5_0.Http"

PROCEDURE _IChilkatHttpEvents_ProgressInfo(name As String, value As String)
    ? "ProgressInfo: " + name + ": " + value
ENDPROC

PROCEDURE _IChilkatHttpEvents_AbortCheck(abort As Number)
    ? "AbortCheck"
ENDPROC
    
PROCEDURE _IChilkatHttpEvents_PercentDone(pct As Number, abort As Number)
    ? "PercentDone: " + STR(pct)
ENDPROC
    
PROCEDURE _IChilkatHttpEvents_BeginReceive
    ? "BeginReceive"
ENDPROC
    
PROCEDURE _IChilkatHttpEvents_EndSend(success As Number)
    ? "EndSend"
ENDPROC
    
PROCEDURE _IChilkatHttpEvents_EndReceive(success As Number)
    ? "EndReceive"
ENDPROC
    
PROCEDURE _IChilkatHttpEvents_HttpChunked
    ? "HttpChunked"
ENDPROC
    
PROCEDURE _IChilkatHttpEvents_BeginSend
    ? "BeginSend"
ENDPROC
    
PROCEDURE _IChilkatHttpEvents_HttpRedirect(origUrl As String, newUrl As String, abort As Number)
    ? "HttpRedirect"
ENDPROC
    
    
PROCEDURE _IChilkatHttpEvents_ReceiveRate(byteCount As Number, bytesPerSec As Number)
    ? "ReceiveRate: byteCount=" + STR(byteCount) + ", bytesPerSec = " + STR(bytesPerSec)
ENDPROC

PROCEDURE _IChilkatHttpEvents_SendRate(byteCount As Number, bytesPerSec As Number)
    ? "SendRate"
ENDPROC   

PROCEDURE _IChilkatHttpEvents_TaskCompleted(task As General)
    ? "TaskCompleted"
ENDPROC

* The TextData and BinaryData events were added in Chilkat v9.5.0.58
* However, they are not yet actually called.  But these must be present..
PROCEDURE _IChilkatHttpEvents_TextData(strData As String)
? "TextData"
ENDPROC

PROCEDURE _IChilkatHttpEvents_BinaryData(binData As Variant)
? "BinaryData"
ENDPROC

ENDDEFINE

