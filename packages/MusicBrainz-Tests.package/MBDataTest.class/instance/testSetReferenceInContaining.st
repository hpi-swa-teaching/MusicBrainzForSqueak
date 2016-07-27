as yet unclassified
testSetReferenceInContaining

	| testTrack testAlbum |
	testTrack := MBTrack new.
	testAlbum := MBAlbum new.
	self data setReferencesIn: testAlbum containing: testTrack.
	self
		assert: testTrack albumEntity
		equals: testAlbum
		description: 'Albumentity of track wasn''t set correctly'.
	self
		assert: (testAlbum tracklist includes: testTrack)
		description: 'Track should be in tracklist of album'