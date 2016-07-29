TESTING: loadFromMB
testLoadLabelsFromMB

	self
		assert: self album loadLabelsFromMB 
		equals: 'Because Music'
		description: 'Returned labels from MB do not match!'