TESTING: track handling
testRemoveTrack

	| testTrack testAlbum |
	testAlbum := MBAlbum new.
	testTrack := MBTrack new.
	self data setReferencesIn: testAlbum containing: testTrack.
	self data moveToNewAlbum: testTrack.
	self
		deny: testTrack albumEntity = testAlbum
		description: 'Track should now have another albumEntity'.
	self
		assert: testAlbum tracklist isEmpty
		description: 'Track should have been removed from the old albums'' tracklist.'