as yet unclassified
testSetMBID

	self
		shouldnt: (self entity setMBID: 'c6442992-75a6-4e43-9c40-d34d0ffd1465')
		raise: Error
		description: 'Valid MBID could not be used for entity'.
	self
		should: [self entity setMBID: 'invalidMBID']
		raise: Error
		description: 'Invalid MBID of entity could be set'
	