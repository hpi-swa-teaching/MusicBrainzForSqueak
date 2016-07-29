as yet unclassified
testMBQueryStrings

	self
		assert: MBRequest mbQueryStrings class
		equals: 	Dictionary 
		description: 'MBQueryStrings should return a dictionary'
	