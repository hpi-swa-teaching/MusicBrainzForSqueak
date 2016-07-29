TESTING: loadFromMB
testCheckValidMBID

	self
		assert: (self entity checkValidMBID: 'c6442992-75a6-4e43-9c40d-34d0ff1456')
		equals: false
		description: 'Invalid mbid was marked as valid'.
	self
		assert: (self entity checkValidMBID: 'c6442992-75a6-4e43-9c40d-34d0ffd1456')
		equals: false
		description: 'Invalid mbid was marked as valid'.
	self
		assert: (self entity checkValidMBID: 'c6442992-75a6-4e43-9c40-d34d0ffd1456')
		equals: true
		description: 'Valid mbid was marked as invalid'