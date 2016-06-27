as yet unclassified
testGetMBIDForTrack

	self
		assert: (MBRequest getMBIDForAlbum: MBMockData mockTrack)
		equals:  '1cdbe3b6-99bb-4a50-9950-29ebc4fcb194'
		description: 'Wrong MBID for Track was returned.'