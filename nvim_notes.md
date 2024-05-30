# Notes for NVIM

### Search and Replace
Search for word under cursor type star:
`*`
Search for word type:
`/`

Navigate searches
Go forward:
`n`
Previous:
`Shift + n`

Change word that cursor is on:
`c + i + w`

Then use `n` to go to next word and `.` to replace

Change all occurrences of a word:
`:%s/<regular expression match/<regualr expression change>/g`
Ex:
`:$s/end/start/g`

Use `gc` instead of `g` to ask each time before changing

### Macros
To start recording a macro:
`q`
Give it any register:
`h`
Perform your actions you wish to do,
Ex: add " go to end of line add ", go down a line and then go to begining of the line
Stop recording:
`q`
Replay the macro:
`@h`
Replay macro 5 times:
`5@h`