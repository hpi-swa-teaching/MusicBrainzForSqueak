as yet unclassified
safeSTONOf: anObject
	|stonString fileDirectory|
		fileDirectory := MBSTONHandler path.
		stonString := STON toString: anObject.
		(fileDirectory forceNewFileNamed: 'albums.ston') nextPutAll: stonString.
		