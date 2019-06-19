@echo off
echo "Setting variables..."
set DestProjRepo="C:\CloneRepo\DestProj"
set SrcProjRepo="C:\CloneRepo\SourceProj"
echo "Removing sandbox version..."
IF EXIST %DestProjRepo% (
    rmdir %DestProjRepo% /s /q
)
echo "Copying official repository into backup location..."
Rem xcopy /e /i /v /h /k %SrcProjRepo% %DestProjRepo%
xcopy /e /i /v /h /k %SrcProjRepo% %DestProjRepo%

robocopy %SrcProjRepo% %DestProjRepo% /e /mir /np /tee /mt:4 /log:backup_log.txt