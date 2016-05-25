as yet unclassified
saveSTONOf: anObject
	|stonString fileDirectory|
		fileDirectory := MBSTONHandler path.
		stonString := STON toString: anObject.
		(fileDirectory forceNewFileNamed: 'albums.ston') nextPutAll: stonString.
		