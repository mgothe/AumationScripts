Rem  ############# Start
Rem  ######Author: Milan Gothe
Rem
Rem @echo off
:: variables
Rem echo Backing up file
Rem set /P source=Enter source folder:
Rem set /P destination=Enter Destination folder:
Rem set xcopy=xcopy /S/E/V/Q/F/H/I/N
Rem %xcopy% %source% %destination%
Rem echo files will be copy press enter to proceed
Rem pause
Rem  ############# Start
 
@echo off
echo "Setting variables..."
set DestProjRepo="C:\RepoTest\DestProj"
set SrcProjRepo="C:\RepoTest\SourceProj"
echo "Removing sandbox version..."
IF EXIST %DestProjRepo% (
    rmdir %DestProjRepo% /s /q
)
echo "Copying official repository into backup location..."
xcopy /e /i /v /h /k %SrcProjRepo% %DestProjRepo%