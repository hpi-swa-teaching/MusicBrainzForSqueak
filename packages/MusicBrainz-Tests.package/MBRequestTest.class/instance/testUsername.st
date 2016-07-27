as yet unclassified
testUsername
	self
		assert: MBRequest username
		equals: ''
		description: 'Should return an empty string'.
	MBRequest username: 'User'.
	self 
		assert: MBRequest username
		equals: 'User'
		description: 'Should return the provided username'
	