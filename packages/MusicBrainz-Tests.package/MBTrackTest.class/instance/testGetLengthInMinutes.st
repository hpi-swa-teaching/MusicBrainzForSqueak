as yet unclassified
testGetLengthInMinutes

	self
		assert: self track getLengthInMinutes
		equals: '3:21'
		description: 'The length in minutes of track does not match'