as yet unclassified
testValidVersion

	self parser stream reset.
	self parser stream nextPut: 3.
	self parser stream reset.
	
	self assert: (self parser validVersion).
	self assert: 1 equals: (self parser stream position)
	