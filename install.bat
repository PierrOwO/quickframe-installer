@echo off
REM Installer for QuickFrame CLI on Windows

SET INSTALL_DIR=%USERPROFILE%\AppData\Local\Programs\QuickFrame
SET TARGET=%INSTALL_DIR%\quickframe.bat

echo Installing QuickFrame CLI...

REM Create target directory
mkdir "%INSTALL_DIR%" >nul 2>&1

REM Copy the CLI file
copy quickframe "%TARGET%" >nul

REM Add install dir to PATH if not already present
reg query "HKCU\Environment" /v PATH | find /i "%INSTALL_DIR%" >nul
IF %ERRORLEVEL% NEQ 0 (
    setx PATH "%PATH%;%INSTALL_DIR%"
    echo PATH variable updated.
)
rmdir /s /q quickframe-installer
echo QuickFrame CLI installed successfully.
echo You can now run: quickframe new <project-name>"