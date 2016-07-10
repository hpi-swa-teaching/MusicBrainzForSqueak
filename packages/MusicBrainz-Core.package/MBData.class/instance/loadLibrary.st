accessing
loadLibrary
	| albums |
	albums := MBSTONHandler loadFromLocalSTON.
	albums ifNotNil: 
		[self albums: albums]