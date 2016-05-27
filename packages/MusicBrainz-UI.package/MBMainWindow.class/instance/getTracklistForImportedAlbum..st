im&ex-porting
getTracklistForImportedAlbum: anObject
	anObject class = MBAlbum
		ifTrue: [^ anObject trackCollection]
		ifFalse: [^ OrderedCollection new]