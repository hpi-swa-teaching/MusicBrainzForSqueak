albumTreeView
getAlbumName: aString 
	aString class = MBalbum
		ifTrue: [^ aString getTitle , ' - ' , aString getArtists first].
	aString class = MBtrack
		ifTrue: [^ aString getTitle].
	^ aString