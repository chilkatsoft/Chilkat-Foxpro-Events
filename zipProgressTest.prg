
LOCAL loZip
LOCAL lnSuccess
LOCAL lnRecurse
LOCAL lnSuccess

zipEventHandler = CREATEOBJECT("MyZipEvents")

loZip = CreateObject('Chilkat_9_5_0.Zip')
EVENTHANDLER(loZip,zipEventHandler)

*  Any string unlocks the component for the 1st 30-days.
lnSuccess = loZip.UnlockComponent("Anything for 30-day trial")
IF (lnSuccess <> 1) THEN
    ? loZip.LastErrorText
    RELEASE loZip
    CANCEL
ENDIF

* Make sure to change this to a directory that exists where test.zip can be created.
* Make sure to change this to a directory that exists where test.zip can be created.
* Make sure to change this to a directory that exists where test.zip can be created.
* Make sure to change this to a directory that exists where test.zip can be created.
lnSuccess = loZip.NewZip("c:/AAWorkarea/test.zip")
IF (lnSuccess <> 1) THEN
    ? loZip.LastErrorText
    RELEASE loZip
    CANCEL
ENDIF

*  Append a directory tree.  The call to AppendFiles does
*  not read the file contents or append them to the zip
*  object in memory.  It simply appends references
*  to the files so that when WriteZip or WriteZipAndClose
*  is called, the referenced files are streamed and compressed
*  into the .zip output file.

* Make sure to change this to a directory that actually exists...
* Make sure to change this to a directory that actually exists...
* Make sure to change this to a directory that actually exists...
* Make sure to change this to a directory that actually exists...
lnRecurse = 1
lnSuccess = loZip.AppendFiles("C:/AAWorkarea/zipTest",lnRecurse)
IF (lnSuccess <> 1) THEN
    ? loZip.LastErrorText
    RELEASE loZip
    CANCEL
ENDIF

lnSuccess = loZip.WriteZipAndClose()
IF (lnSuccess <> 1) THEN
    ? loZip.LastErrorText
    RELEASE loZip
    CANCEL
ENDIF

? "Zip Created!"

RELEASE loZip




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

* This event is not actually called.  It exists for possible future use.
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
? "FileZipped: " + path + ", sz=" + STR(fileSize) + ", compressedSz=" + STR(compressedSize)
ENDPROC

PROCEDURE _IChilkatZipEvents_PercentDone(pctDone As Number, abort As Number)
? "PercentDone: " + STR(pctDone)
ENDPROC

PROCEDURE _IChilkatZipEvents_ProgressInfo(name As String, value As String)
? "ProgressInfo: " + name + ", " + value
ENDPROC

PROCEDURE _IChilkatZipEvents_SkippedForUnzip(path As String, compressedSize As Number, fileSize As Number)
? "SkippedForUnzip"
ENDPROC

PROCEDURE _IChilkatZipEvents_TaskCompleted(task As Generic)
? "TaskCompleted"
ENDPROC

* This event is not actually called.  It exists for possible future use.
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


