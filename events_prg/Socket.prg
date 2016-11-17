socketEventHandler = CREATEOBJECT("MySocketEvents")
loSocket = CreateObject("Chilkat_9_5_0.Socket")
EVENTHANDLER(loSocket,socketEventHandler)

DEFINE CLASS MySocketEvents AS SESSION OLEPUBLIC
IMPLEMENTS _IChilkatEvents IN "Chilkat_9_5_0.Socket"

PROCEDURE _IChilkatEvents_AbortCheck(abort As Number)
? "AbortCheck"
ENDPROC

PROCEDURE _IChilkatEvents_BinaryData(data As Variant)
? "BinaryData"
ENDPROC

PROCEDURE _IChilkatEvents_PercentDone(pctDone As Number, abort As Number)
? "PercentDone"
ENDPROC

PROCEDURE _IChilkatEvents_ProgressInfo(name As String, value As String)
? "ProgressInfo"
ENDPROC

PROCEDURE _IChilkatEvents_TaskCompleted(task As Generic)
? "TaskCompleted"
ENDPROC

PROCEDURE _IChilkatEvents_TextData(data As String)
? "TextData"
ENDPROC


ENDDEFINE
