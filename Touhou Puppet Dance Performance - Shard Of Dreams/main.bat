move "..\Data\FocasLens" "%appdata%\FocasLens"

:parse
IF "%~1"=="" GOTO endparse
IF "%~1"=="-tpdp" GOTO TPDP_SOD
IF "%~1"=="-update" GOTO Updater
IF "%~1"=="-random" GOTO Randomizer
IF "%~1"=="-save" GOTO SaveEditor
SHIFT
GOTO parse
:endparse
cd "..\..\..\..\App\Mininite\Scripts"
START "" "%Apps%\My Tools\Mininite\Modules\MininiteCLI.exe" /script "Touhou_Puppet_Dance_Performance_-_Shard_Of_Dreams.ahk"
exit

:TPDP_SOD
START /wait "" "%LocaleEmulator%\LEProc.exe" "TPDP - SOD\enbu_ap.exe"
GOTO Cleanup

:Updater
START /wait "" "%LocaleEmulator%\LEProc.exe" "TPDP - SOD\SOD_Updater.exe"
GOTO Cleanup

:Randomizer
START /wait "" "Tools\TPDPRandomizer.exe"
GOTO Cleanup

:SaveEditor
START /wait "" "Tools\TPDPSaveEditor.exe"
GOTO Cleanup

:Cleanup
move "%appdata%\FocasLens" "..\Data\FocasLens"