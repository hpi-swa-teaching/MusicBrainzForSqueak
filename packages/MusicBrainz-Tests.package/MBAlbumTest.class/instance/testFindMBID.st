TESTING: loadFromMB
testFindMBID 
	| album |
	album := MBMockData mockAlbum.
	self
		assert: (album findMBID)
		equals: '1cdbe3b6-99bb-4a50-9950-29ebc4fcb194'
		description: 'Wrong MBID for Album was returned.'
