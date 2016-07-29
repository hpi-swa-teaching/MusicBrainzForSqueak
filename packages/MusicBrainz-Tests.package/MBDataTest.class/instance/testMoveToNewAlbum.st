as yet unclassified
testMoveToNewAlbum

	| testTrack testAlbum |
	testAlbum := MBAlbum new.
	testTrack := MBTrack new.
	
	self data setReferencesIn: testAlbum containing: testTrack.
	self data moveToNewAlbum: testTrack.
	self
		assert: (self data collectAllTracks includes: testTrack)
		description: 'Track should have been added to unknown album in data'