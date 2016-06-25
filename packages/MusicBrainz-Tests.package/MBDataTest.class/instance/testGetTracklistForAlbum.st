as yet unclassified
testGetTracklistForAlbum
	self 
		assert: (self data getTracklistForAlbum: MBMockData mockAlbum) class
		equals: OrderedCollection
		description: 'getTracklistForAlbum should return an OrderedCollection'.
	self
		assert: (((self data getTracklistForAlbum: MBMockData mockAlbum) first) metadata at: #Title)
		equals: 'Epsilon - Original Remix'
		description: ''