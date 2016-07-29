TESTING: request
testGetMBIDForAlbum

	self
		assert: (MBRequest getMBIDForAlbum: MBMockData mockAlbum)
		equals: '1cdbe3b6-99bb-4a50-9950-29ebc4fcb194'
		description: 'Wrong MBID for Album was returned.'