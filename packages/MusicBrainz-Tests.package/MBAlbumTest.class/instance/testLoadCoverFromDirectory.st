TESTING: loadFromMB
testLoadCoverFromDirectory

	self
		assert: self album loadCoverFromDirectory isNil
		description: 'Cover in directory should be nil!'