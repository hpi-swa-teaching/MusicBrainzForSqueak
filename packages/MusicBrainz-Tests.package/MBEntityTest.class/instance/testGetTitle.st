as yet unclassified
testGetTitle

	self
		assert: self entity getTitle
		equals: 'Testentity'
		description: 'The title of entity does not match'