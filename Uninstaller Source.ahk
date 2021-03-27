#NoTrayIcon
#SingleInstance ignore
FileInstall, OIS.bmp, %A_Temp%\setupwp.bmp, 1
SplashImage, %A_Temp%\setupwp.bmp, A,,, Preparing to uninstall My Program
MsgBox, 4, 2072 Opsec Uninstallation system, Proceed with uninstallation of My Program?
IfMsgBox, No
ExitApp
IfMsgBox, Yes
SplashImage, %A_Temp%\setupwp.bmp, A,,, Now uninstalling My Program
FileDelete, myprog.exe
FileDelete, myprog2.exe
FileDelete, myprog3.exe
FileDelete, testdll.dll
SplashImage, %A_Temp%\setupwp.bmp, A,,, Finished uninstalling My Program
MsgBox, Uninstallation complete
FileDelete, %A_Temp%\setupwp.bmp
ExitApp