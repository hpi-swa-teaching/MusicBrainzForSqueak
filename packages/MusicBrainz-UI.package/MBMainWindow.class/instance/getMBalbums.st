albumTreeView
getMBalbums
	| requestObject albums|
	albums := MBSTONHandler loadFromLocalSTON.
	albums ifNotNil: [^albums].
	requestObject := MBrequest new.
	albums := requestObject getAlbumsNamed: 'Love' FetchFirst: 10.
	self mbAlbums addAll: albums.
	^ albums
	