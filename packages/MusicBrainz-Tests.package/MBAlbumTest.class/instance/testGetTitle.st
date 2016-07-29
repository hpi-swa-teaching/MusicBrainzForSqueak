TESTING: accessing
testGetTitle

	self
		assert: 'Testalbum'
		equals: self album getTitle 
		description: 'The title of album does not match'