' Option Explicit
' �G���[�������ɂ������𑱍s����悤�ݒ�
' On Error Resume Next

Dim objFileSys  ' �I�u�W�F�N�g�𐶐��i�t�@�C���V�X�e���j
Dim strFolder   ' �R�s�[��t�H���_��

Set objFileSys = WScript.CreateObject("Scripting.FileSystemObject")
strFolder = Wscript.Arguments(0) 

For i=1 to Wscript.Arguments.Count-1
	' �t�@�C���p�X���擾
	strFileName = Wscript.Arguments(i)
	'WScript.Echo strFileName

	' �t�@�C�� or �t�H���_ ���𔻒�
	If objFileSys.FileExists(strFileName) Then
		'�t�@�C���̏ꍇ�F�t�@�C�����㏑���R�s�[
		Call objFileSys.CopyFile(strFileName, strFolder)
	Else
		'�t�H���_�̏ꍇ�F�t�H���_���㏑���R�s�[
		Call objFileSys.CopyFolder(strFileName, strFolder)
	End If
		
Next

Set objFileSys = Nothing