@echo off
rem ���[�J���t�H���_�̍쐬�ꏊ
set local_folder="C:\Local_Copy_Temp\"
rem �c�[���̃p�X
set tool_path=".\LocalCopy.vbs"

echo �����������@���[�J���R�s�[�c�[���@����������

rem ��Ɨp�t�H���_�̑��݃`�F�b�N
IF NOT EXIST "%local_folder%" (
    rem �t�H���_�����݂��Ȃ��ꍇ�F�t�H���_�쐬
    mkdir %local_folder%
    rem echo �t�H���_�͑��݂��Ă��܂���
) Else (
    rem echo �t�H���_�͂��łɑ��݂��Ă��܂�
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