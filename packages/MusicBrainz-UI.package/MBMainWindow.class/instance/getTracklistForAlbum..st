albumTreeView
getTracklistForAlbum: aString

	(aString class = MBAlbum)
	ifTrue: [	^ aString loadTracksFromMB]
	ifFalse: [^ OrderedCollection new]
	
	