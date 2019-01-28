@echo off
rem ローカルフォルダの作成場所
set local_folder="C:\Local_Copy_Temp\"
rem ツールのパス
set tool_path=".\LocalCopy.vbs"

echo ＊＊＊＊＊　ローカルコピーツール　＊＊＊＊＊

rem 作業用フォルダの存在チェック
IF NOT EXIST "%local_folder%" (
    rem フォルダが存在しない場合：フォルダ作成
    mkdir %local_folder%
    rem echo フォルダは存在していません
) Else (
    rem echo フォルダはすでに存在しています
)

:start
IF "%~1" == "" GOTO finish

echo %tool_path% %local_folder% %~1 
%tool_path% %local_folder% %~1 

:next
SHIFT
GOTO start

:finish
rem EXIT