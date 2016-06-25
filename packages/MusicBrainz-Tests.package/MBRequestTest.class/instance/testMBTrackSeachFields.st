as yet unclassified
testMBTrackSeachFields

	self
		assert: MBRequest MBTrackSearchFields class
		equals: 	Dictionary 
		description: 'MBTrackSearchFields should return a dictionary'
	