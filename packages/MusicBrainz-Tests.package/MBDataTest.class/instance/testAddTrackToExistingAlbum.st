as yet unclassified
testAddTrackToExistingAlbum
	| testTrack |
	testTrack := MBMockData mockTrack22.
	self
		assert: (self data addTrackToExistingAlbum: testTrack)
		description: 'Should return true, as album already exists'.
	self
		assert: (self data albums detect: [:album | album getTitle = MBMockData mockAlbum2 getTitle]
			ifFound: [:album | album tracklist includes: testTrack] ifNone: [^ false])
		description: 'The album should now contain the new track.'