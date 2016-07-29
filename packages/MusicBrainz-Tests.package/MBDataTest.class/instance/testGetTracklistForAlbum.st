TESTING: metadata-management
testGetTracklistForAlbum
	self 
		assert: (self data getTracklistForAlbum: MBMockData mockAlbum) class
		equals: OrderedCollection
		description: 'getTracklistForAlbum should return an OrderedCollection'.
	self
		assert: (((self data getTracklistForAlbum: MBMockData mockAlbum) first) class)
		equals: MBTrack 
		description: 'Elements in album tracklist should be a MBTrack'