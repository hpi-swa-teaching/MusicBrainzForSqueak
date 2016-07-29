TESTING: accessing
testAlbums

	self
		assert: self data albums class
		equals: OrderedCollection
		description: 'Albums in data should be an OrderedCollection'.
	self
		assert: self data albums first class superclass
		equals: MBEntity
		description: 'Albums in data should only contain MBEntities'