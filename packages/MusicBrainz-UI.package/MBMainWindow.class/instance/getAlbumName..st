albumTreeView
getAlbumName: anObject
	"anObject class entityName = 'release'
		ifTrue: [^ anObject getTitle , ' - ' , anObject getArtists first].
	anObject class entityName = 'recording'
		ifTrue: [^ anObject getTitle]."
	^ anObject asString