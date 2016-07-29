TESTING: accessing
testAlbumEntity

	| album |
	album := MBAlbum new.
	self track albumEntity: album.
	self 
		assert: self track albumEntity 
		equals: album