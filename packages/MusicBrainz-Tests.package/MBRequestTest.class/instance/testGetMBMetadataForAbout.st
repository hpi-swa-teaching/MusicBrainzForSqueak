as yet unclassified
testGetMBMetadataForAbout

	| album track |
	album := MBMockData mockAlbum.
	track := MBMockData mockTrack.
	self
		assert: (MBRequest getMBMetadataFor: album About: #'Artist')
		equals: 'Kygo'
		description: 'Wrong artist was returned for album.'.
	self
		assert: (MBRequest getMBMetadataFor: album About: #'Length')
		equals: nil
		description: 'Length for album should be nil.'.
	self
		assert: (MBRequest getMBMetadataFor: track About: #'Artist')
		equals: 'Kygo'
		description: 'Wrong artist was returned for track.'