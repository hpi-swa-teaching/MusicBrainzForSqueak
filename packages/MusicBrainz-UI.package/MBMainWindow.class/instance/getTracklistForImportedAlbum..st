im&ex-porting
getTracklistForImportedAlbum: anObject
	anObject class entityName = 'release'
		ifTrue: [^ anObject tracklist]
		ifFalse: [^ OrderedCollection new]