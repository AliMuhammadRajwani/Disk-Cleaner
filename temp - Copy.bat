





@echo off

rem Function to prompt user for confirmation
:confirmDelete
set /p "confirm=Do you want to delete unwanted files and scan for viruses? (Y/N): "
if /i "%confirm%"=="Y" (
    goto deleteFilesAndScan
) else if /i "%confirm%"=="N" (
    goto end
) else (
    echo Invalid input. Please enter Y for Yes or N for No.
    goto confirmDelete
)

rem Delete unwanted files and scan for viruses
:deleteFilesAndScan
echo Cleaning temporary files...
rem Clean Windows temp folder
del /s /f /q C:\Windows\Temp\*.*
rd /s /q C:\Windows\Temp
md C:\Windows\Temp

rem Clean user temp folder
del /s /f /q "%temp%\*.*"
rd /s /q "%temp%"
md "%temp%"

rem Add commands to scan for viruses here using your antivirus software's command-line interface
echo Scanning for viruses...
rem Example: Replace the following line with the command to scan for viruses using your antivirus software
rem antivirus-scan-command

echo Cleaning completed.
pause
goto end

rem End of script
:end
