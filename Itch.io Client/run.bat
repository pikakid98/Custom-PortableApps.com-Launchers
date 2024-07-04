@ECHO OFF
;Title Itch.io Client Launcher
START /wait "" "App\Itch.io Client\itch-setup.exe"
mkdir "Data\Temp"
move "%userprofile%\Desktop\itch.lnk" "Data\Temp\itch.lnk"
rmdir "Data\Temp" /S /Q
taskkill /F /IM "cmd.exe"