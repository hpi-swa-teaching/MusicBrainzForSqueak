as yet unclassified
testMBQueryStrings

	self
		assert: MBRequest MBQueryStrings class
		equals: 	Dictionary 
		description: 'MBQueryStrings should return a dictionary'
	