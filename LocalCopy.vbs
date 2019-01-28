' Option Explicit
' エラー発生時にも処理を続行するよう設定
' On Error Resume Next

Dim objFileSys  ' オブジェクトを生成（ファイルシステム）
Dim strFolder   ' コピー先フォルダ名

Set objFileSys = WScript.CreateObject("Scripting.FileSystemObject")
strFolder = Wscript.Arguments(0) 

For i=1 to Wscript.Arguments.Count-1
	' ファイルパスを取得
	strFileName = Wscript.Arguments(i)
	'WScript.Echo strFileName

	' ファイル or フォルダ かを判定
	If objFileSys.FileExists(strFileName) Then
		'ファイルの場合：ファイルを上書きコピー
		Call objFileSys.CopyFile(strFileName, strFolder)
	Else
		'フォルダの場合：フォルダを上書きコピー
		Call objFileSys.CopyFolder(strFileName, strFolder)
	End If
		
Next

Set objFileSys = Nothing