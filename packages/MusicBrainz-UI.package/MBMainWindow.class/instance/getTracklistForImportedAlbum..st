im&ex-porting
getTracklistForImportedAlbum: aString
	aString class = MBalbum
		ifTrue: [^ aString trackCollection]
		ifFalse: [^ OrderedCollection new]