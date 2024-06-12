# Disk-Cleaner

This script is designed to clean up various temporary and unnecessary files from a Windows system. Let's break down the script step by step:

1. **@echo off:** This command turns off the command echoing, which prevents each command from being displayed in the console as it is executed.

2. **del /s /f /q c:\windows\temp\*.*:** Deletes all files in the `C:\Windows\Temp` directory and its subdirectories (/s), without prompting for confirmation (/q), and forces deletion of read-only files (/f).

3. **rd /s /q c:\windows\temp:** Removes the `C:\Windows\Temp` directory and all its subdirectories (/s) without prompting for confirmation (/q).

4. **md c:\windows\temp:** Recreates the `C:\Windows\Temp` directory after deleting it, ensuring it exists for system operations.

5. **del /s /f /q C:\WINDOWS\Prefetch:** Deletes all files in the `C:\Windows\Prefetch` directory and its subdirectories.

6. **del /s /f /q %temp%\*.*:** Deletes all files in the user's temporary directory (%temp%).

7. **rd /s /q %temp%:** Removes the user's temporary directory and all its subdirectories.

8. **md %temp%:** Recreates the user's temporary directory after deleting it.

9. **deltree /y c:\windows\tempor~1:** Deletes the `C:\Windows\Tempor~1` directory and its contents without prompting for confirmation.

10. **deltree /y c:\windows\temp:** Deletes the `C:\Windows\Temp` directory and its contents without prompting for confirmation.

11. **deltree /y c:\windows\tmp:** Deletes the `C:\Windows\Tmp` directory and its contents without prompting for confirmation.

12. **deltree /y c:\windows\ff*.tmp:** Deletes files with names starting with "ff" and having the ".tmp" extension in the `C:\Windows` directory without prompting for confirmation.

13. **deltree /y c:\windows\history:** Deletes the `C:\Windows\History` directory and its contents without prompting for confirmation.

14. **deltree /y c:\windows\cookies:** Deletes the `C:\Windows\Cookies` directory and its contents without prompting for confirmation.

15. **deltree /y c:\windows\recent:** Deletes the `C:\Windows\Recent` directory and its contents without prompting for confirmation.

16. **deltree /y c:\windows\spool\printers:** Deletes the contents of the `C:\Windows\Spool\Printers` directory without prompting for confirmation.

17. **del c:\WIN386.SWP:** Deletes the `C:\WIN386.SWP` file.

18. **cls:** Clears the console screen.

19. **echo Cleaning temporary files...:** Displays a message indicating that temporary files are being cleaned.

20. **pause:** Pauses the script execution, allowing the user to view the output before closing the console window.

