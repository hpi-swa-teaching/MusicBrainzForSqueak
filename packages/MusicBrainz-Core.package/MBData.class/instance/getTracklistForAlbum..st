metadata-management
getTracklistForAlbum: aMBAlbum
	(aMBAlbum isAlbum) 
		ifTrue: [^ self sortTracklistFor: aMBAlbum]
		ifFalse: [^ OrderedCollection new]