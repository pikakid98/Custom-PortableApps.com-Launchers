if exist "App\Adwcleaner\adwcleaner(1).exe" (
GOTO Backup
) ELSE (
GOTO Run
)

:Backup
mkdir "Data\Backup"
move "App\Adwcleaner\adwcleaner.exe" "Data\Backup"
rename "App\Adwcleaner\adwcleaner(1).exe" "adwcleaner.exe"
START /wait "" "App\Launcher\msg.vbs"

:Run
START "" "App\Adwcleaner\adwcleaner.exe"