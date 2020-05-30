'
'Windows .vbs file
'
'https://github.com/foo123/scripts
'
'
'
'Script to launch another windows program or script with given parameters, without opening a command-prompt
'
CreateObject("Wscript.Shell").Run "" & WScript.Arguments(0) & "", 0, False