saving
save: anObject toFile: aString
	| stonString fileDirectory |
	fileDirectory := self path.
	stonString := STON toString: anObject.
	(fileDirectory forceNewFileNamed: aString)
		nextPutAll: stonString