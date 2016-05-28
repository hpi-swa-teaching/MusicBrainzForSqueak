albumTreeView
getTracklistForAlbum: anObject

	(anObject class entityName = 'release')
	ifTrue: [	^ anObject loadTracksFromMB]
	ifFalse: [^ OrderedCollection new]
	
	