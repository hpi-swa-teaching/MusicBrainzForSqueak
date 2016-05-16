as yet unclassified
getAlbumName: aString

	(aString class = MBalbum)
	ifTrue: [^ (aString getTitle, ' - ', aString getArtists first) ]
	ifFalse: [^ aString]