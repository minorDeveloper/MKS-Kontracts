@echo off
set MOD_NAME=MKS_Kontracts
set DIR=%MOD_NAME%-0.1.0
mkdir ..\Release\GameData
xcopy /s /f /y %cd%\GameData ..\Release\GameData\
copy /y LICENSE ..\Release\GameData\%MOD_NAME%\
copy /y ..\NOTICE.txt ..\Release\GameData\%MOD_NAME%\
copy /y ..\Readme.txt ..\Release\GameData\%MOD_NAME%\
cd ..\Release\
7za a -tzip %DIR%.zip GameData
rmdir GameData /s /q