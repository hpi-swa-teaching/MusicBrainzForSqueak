accessing
getTracklistForAlbum: anObject

	(anObject isAlbum) 
		ifTrue: [	^ anObject tracklist]
		ifFalse: [^ OrderedCollection new]