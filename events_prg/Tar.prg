tarEventHandler = CREATEOBJECT("MyTarEvents")
loTar = CreateObject("Chilkat_9_5_0.Tar")
EVENTHANDLER(loTar,tarEventHandler)

DEFINE CLASS MyTarEvents AS SESSION OLEPUBLIC
IMPLEMENTS _IChilkatTarEvents IN "Chilkat_9_5_0.Tar"

PROCEDURE _IChilkatTarEvents_AbortCheck(abort As Number)
? "AbortCheck"
ENDPROC

PROCEDURE _IChilkatTarEvents_BinaryData(data As Variant)
? "BinaryData"
ENDPROC

PROCEDURE _IChilkatTarEvents_NextTarFile(path As String, fileSize As Number, isDirectory As Number, nSkip As Number)
? "NextTarFile"
ENDPROC

PROCEDURE _IChilkatTarEvents_PercentDone(pctDone As Number, abort As Number)
? "PercentDone"
ENDPROC

PROCEDURE _IChilkatTarEvents_ProgressInfo(name As String, value As String)
? "ProgressInfo"
ENDPROC

PROCEDURE _IChilkatTarEvents_TaskCompleted(task As Generic)
? "TaskCompleted"
ENDPROC

PROCEDURE _IChilkatTarEvents_TextData(data As String)
? "TextData"
ENDPROC


ENDDEFINE
