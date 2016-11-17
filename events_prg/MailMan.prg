mailManEventHandler = CREATEOBJECT("MyMailManEvents")
loMailMan = CreateObject("Chilkat_9_5_0.MailMan")
EVENTHANDLER(loMailMan,mailManEventHandler)

DEFINE CLASS MyMailManEvents AS SESSION OLEPUBLIC
IMPLEMENTS _IChilkatMailManEvents IN "Chilkat_9_5_0.MailMan"

PROCEDURE _IChilkatMailManEvents_AbortCheck(abort As Number)
? "AbortCheck"
ENDPROC

PROCEDURE _IChilkatMailManEvents_BinaryData(data As Variant)
? "BinaryData"
ENDPROC

PROCEDURE _IChilkatMailManEvents_EmailReceived(subject As String, fromAddr As String, fromName As String, returnPath As String, date As String, uidl As String, sizeInBytes As Number)
? "EmailReceived"
ENDPROC

PROCEDURE _IChilkatMailManEvents_PercentDone(pctDone As Number, abort As Number)
? "PercentDone"
ENDPROC

PROCEDURE _IChilkatMailManEvents_ProgressInfo(name As String, value As String)
? "ProgressInfo"
ENDPROC

PROCEDURE _IChilkatMailManEvents_TaskCompleted(task As Generic)
? "TaskCompleted"
ENDPROC

PROCEDURE _IChilkatMailManEvents_TextData(data As String)
? "TextData"
ENDPROC


ENDDEFINE
