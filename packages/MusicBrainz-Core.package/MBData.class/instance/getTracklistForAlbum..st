accessing
getTracklistForAlbum: anObject
	(anObject isAlbum) 
		ifTrue: [^ self sortTracklistFor: anObject]
		ifFalse: [^ OrderedCollection new]