accessing
loadFromDisk
	| albums |
	albums := MBSTONHandler loadFromLocalSTON.
	albums ifNotNil: 
		[self albums: albums]