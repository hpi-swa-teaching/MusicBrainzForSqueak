as yet unclassified
testLoadCoverFromDirectory

	self
		assert: self album loadCoverFromDirectory
		equals: nil
		description: 'Cover in directory should be nil!'