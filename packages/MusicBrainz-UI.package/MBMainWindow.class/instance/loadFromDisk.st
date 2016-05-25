im&ex-porting
loadFromDisk
	| albums |
	albums := MBSTONHandler loadFromLocalSTON.
	albums ifNotNil: 
		[self importedAlbums: albums].
	self changed: #importedAlbums.