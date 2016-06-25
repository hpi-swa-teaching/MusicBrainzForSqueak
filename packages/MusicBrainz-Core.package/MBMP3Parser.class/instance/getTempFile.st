writing
getTempFile
	| file |
	file := FileStream fileNamed: 'Temp.mp3'.
	file binary.
	^file
