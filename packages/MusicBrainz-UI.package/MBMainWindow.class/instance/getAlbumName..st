albumTreeView
getAlbumName: anObject
	anObject class = MBAlbum
		ifTrue: [^ anObject getTitle , ' - ' , anObject getArtists first].
	anObject class = MBTrack
		ifTrue: [^ anObject getTitle].
	^ anObject