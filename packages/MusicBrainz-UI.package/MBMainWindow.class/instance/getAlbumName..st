albumTreeView
getAlbumName: anObject
	anObject class = MBalbum
		ifTrue: [^ anObject getTitle , ' - ' , anObject getArtists first].
	anObject class = MBtrack
		ifTrue: [^ anObject getTitle].
	^ anObject