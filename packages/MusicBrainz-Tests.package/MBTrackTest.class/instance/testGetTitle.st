as yet unclassified
testGetTitle

	self
		assert: self track getTitle
		equals: 'Hey Now'
		description: 'The title of track does not match'