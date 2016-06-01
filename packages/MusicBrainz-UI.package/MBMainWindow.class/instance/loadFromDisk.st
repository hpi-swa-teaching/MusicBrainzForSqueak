im&ex-porting
loadFromDisk
	| albums |
	albums := MBSTONHandler loadFromLocalSTON.
	albums ifNotNil: 
		[self albums: albums].
	self changed: #albums