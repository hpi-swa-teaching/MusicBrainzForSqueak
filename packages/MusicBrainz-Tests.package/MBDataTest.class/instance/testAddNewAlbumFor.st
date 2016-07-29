TESTING: track handling
testAddNewAlbumFor

	| testTrack |
	testTrack := MBTrack new.
	testTrack metadata at: #'Album' put: 'Testalbum'.
	self
		assert: ((self data addNewAlbumFor: testTrack) class)
		equals: MBAlbum
		description: 'addNewAlbumFor should return a Album'.
	self
		assert: (self data albums anySatisfy: [:album | album getTitle = 'Testalbum'])
		description: 'There should be a new testalbum'.