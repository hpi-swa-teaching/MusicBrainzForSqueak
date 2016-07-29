TESTING: request
testGetMBIDForTrack

	self
		assert: (MBRequest getMBIDForTrack: MBMockData mockTrack)
		equals:  '67526439-52c7-4b69-8b95-a93106fce2e4'
		description: 'Wrong MBID for Track was returned.'