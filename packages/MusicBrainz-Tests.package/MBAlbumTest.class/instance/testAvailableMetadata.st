TESTING: accessing
testAvailableMetadata
	self
		assert: MBAlbum availableMetadata class
		equals: OrderedCollection 
		description: 'AvailableMetadata of Album should return an orderedCollection'