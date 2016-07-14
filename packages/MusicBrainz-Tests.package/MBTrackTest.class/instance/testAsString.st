as yet unclassified
testAsString

	self
		assert: self track asString
		equals: '(!) ', self track getTitle
		description: 'Track asString was changed. Should return title'