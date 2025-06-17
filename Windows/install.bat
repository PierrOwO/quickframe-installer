@echo off
REM QuickFrame Installer for Windows

SET INSTALL_DIR=%USERPROFILE%\AppData\Local\Programs\QuickFrame
SET SCRIPT_PATH=%INSTALL_DIR%\quickframe
SET BATCH_PATH=%INSTALL_DIR%\quickframe.bat

echo Installing QuickFrame CLI...

REM Create install directory
mkdir "%INSTALL_DIR%" >nul 2>&1

REM Copy the CLI PHP script and the Windows batch launcher
copy /Y "quickframe" "%SCRIPT_PATH%" >nul
copy /Y "quickframe.bat" "%BATCH_PATH%" >nul

REM Add install dir to PATH if not already present
reg query "HKCU\Environment" /v PATH | find /i "%INSTALL_DIR%" >nul
IF %ERRORLEVEL% NEQ 0 (
    setx PATH "%PATH%;%INSTALL_DIR%"
    echo PATH variable updated.
)

echo.
set /p DELETE_CONFIRM=Do you want to delete the installer folder? (y/N): 
IF /I "%DELETE_CONFIRM%"=="y" (
    cd ..
    rmdir /s /q quickframe-installer
    echo Installer folder deleted.
) ELSE (
    echo Installer folder was not deleted. You can remove it manually later.
)

echo.
echo QuickFrame CLI installed successfully.
echo You can now run: quickframe new ^<project-name^>