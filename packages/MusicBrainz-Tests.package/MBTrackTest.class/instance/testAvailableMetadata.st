as yet unclassified
testAvailableMetadata

	self
		assert: MBTrack availableMetadata class
		equals: OrderedCollection 
		description: 'AvailableMetadata of Track should return an orderedCollection'