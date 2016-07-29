TESTING: accessing
testGetURLsinCache

	self
		assert: MBRequestCache getURLsinCache class
		equals: OrderedCollection 
		description: 'getURLsinCache should return an orderedCollection'
		