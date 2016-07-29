TESTING: loadFromMB
testFindMBID

	| track |
	track := MBMockData mockTrack.
	self
		assert: track findMBID
		equals: '67526439-52c7-4b69-8b95-a93106fce2e4'
		description: 'Wrong MBID for track was returned.'
