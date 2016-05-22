albumTreeView
getTracklistForAlbum: aString

	(aString class = MBalbum)
	ifTrue: [	^ aString getTracks]
	ifFalse: [^ OrderedCollection new]
	
	