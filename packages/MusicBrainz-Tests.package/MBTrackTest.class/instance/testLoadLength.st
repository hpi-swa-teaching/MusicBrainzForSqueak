TESTING: accessing
testLoadLength

	self
		assert: self track getLength
		equals: '201866'
		description: 'The length of track does not match'