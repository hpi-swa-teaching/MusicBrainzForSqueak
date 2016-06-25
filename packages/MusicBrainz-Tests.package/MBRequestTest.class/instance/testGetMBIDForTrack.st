as yet unclassified
testGetMBIDForTrack

	self
		assert: (MBRequest getMBIDForAlbum: MBMockData mockTrack)
		equals: '67526439-52c7-4b69-8b95-a93106fce2e4'
		description: 'Wrong MBID for Track was returned.'