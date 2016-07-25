as yet unclassified
testAsString
	self
		assert: self track asString
		equals: self track getTitle , MBEntity labelSeparator
				, (self track metadata at: #Artist) , MBEntity labelSeparator , self track getLengthInMinutes
		description: 'Track asString was changed. Should return title'