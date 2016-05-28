im&ex-porting
getTracklistForImportedAlbum: anObject
	anObject class entityName = 'release'
		ifTrue: [^ anObject trackCollection]
		ifFalse: [^ OrderedCollection new]