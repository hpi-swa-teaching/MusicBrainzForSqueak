saving and loading
save: anObject toFile: aString
	| stonString fileDirectory |
	fileDirectory := MBSTONHandler path.
	stonString := STON toString: anObject.
	(fileDirectory forceNewFileNamed: aString)
		nextPutAll: stonString