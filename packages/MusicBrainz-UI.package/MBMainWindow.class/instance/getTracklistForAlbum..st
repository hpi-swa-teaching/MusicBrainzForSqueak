albumTreeView
getTracklistForAlbum: aString

	(aString class entityName = 'release')
	ifTrue: [	^ aString loadTracksFromMB]
	ifFalse: [^ OrderedCollection new]
	
	