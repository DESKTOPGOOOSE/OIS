#NoTrayIcon
#SingleInstance ignore
IfNotExist, setupres.dll
	ExitApp
else
	IfNotExist, setup.ico
		ExitApp
else
	FileInstall, OIS.bmp, %A_Temp%\setupwp.bmp, 1
SplashImage, %A_Temp%\setupwp.bmp, A,,, Preparing to install My Program
MsgBox, 4, 2072 Opsec Installation system, Proceed with installation of My Program?
IfMsgBox, No
	ExitApp
IfMsgBox, Yes
	FileSelectFolder, OutputVar, , 3
SplashImage, %A_Temp%\setupwp.bmp, A,,, Now installing My Program
FileInstall, myprog.exe, %OutputVar%\myprog.exe
FileInstall, myprog2.exe, %OutputVar%\myprog2.exe
FileInstall, myprog3.exe, %OutputVar%\myprog3.exe
FileInstall, testdll.dll, %OutputVar%\TestDLL.dll
FileInstall, uninst000.exe, %OutputVar%\uninst000.exe
SplashImage, %A_Temp%\setupwp.bmp, A,,, Finished installing My Program
MsgBox, Installation complete
FileDelete, %A_Temp%\setupwp.bmp
ExitApp