as yet unclassified
testAddTrackToUnknownAlbum

	| testTrack |
	testTrack := MBMockData mockTrack23.
	testTrack metadata removeKey: #'Album' ifAbsent: [].
	self data addTrackToUnknownAlbum: testTrack.
	self
		assert: (testTrack albumEntity getTitle = 'Unknown')
		description: 'Album of track should now be the unknown album'.
	self
		assert: (self data albums
			detect: [:album | album getTitle = 'Unknown']
			ifFound: [:album | album tracklist includes: testTrack]
			ifNone: [false])
		description: 'Unkown album should now contain the new track'