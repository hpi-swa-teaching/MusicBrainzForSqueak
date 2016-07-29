TESTING: loadFromMB
testLoadYearFromMB

	self
		assert: self album loadYearFromMB
		equals: '2013' 
		description: 'Returned year should be 2013'