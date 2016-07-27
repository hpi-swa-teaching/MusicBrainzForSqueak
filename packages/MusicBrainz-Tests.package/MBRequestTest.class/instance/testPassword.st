as yet unclassified
testPassword
	self
		assert: MBRequest password
		equals: ''
		description: 'Should return an empty string'.
	MBRequest password: 'Pass'.
	self 
		assert: MBRequest password
		equals: 'Pass'
		description: 'Should return the provided password'
	