@echo off

start "" /B "C:\Program Files\Steam\Steam.exe" "-applaunch" "71162"
echo msgbox "Please proceed to install SEGA Megadrive & Genesis Classics. Press OK to continue." > %tmp%\tmp.vbs
wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs
"C:\Program Files\Steam\Steam.exe"
echo msgbox "Now please wait until Steam is finished downloading all games... Press OK once Steam has finished downloading SEGA Megadrive & Genesis Classics to finish the installation process." > %tmp%\tmp.vbs
wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs
"C:\Program Files\Steam\Steam.exe" "-shutdown"
