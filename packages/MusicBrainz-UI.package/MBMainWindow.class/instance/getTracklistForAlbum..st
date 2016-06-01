albumTreeView
getTracklistForAlbum: anObject

	(anObject class entityName = 'release')
	ifTrue: [	^ anObject tracklist]
	ifFalse: [^ OrderedCollection new]
	
	