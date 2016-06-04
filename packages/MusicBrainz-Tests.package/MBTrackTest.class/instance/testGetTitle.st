as yet unclassified
testGetTitle

	self
		assert: self track getTitle
		equals: 'Testtrack'
		description: 'The title of track does not match'