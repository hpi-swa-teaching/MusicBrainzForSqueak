albumTreeView
getTracklistForAlbum: aString

	(aString class = MBalbum)
	ifTrue: [	^ aString loadTracksFromMB]
	ifFalse: [^ OrderedCollection new]
	
	