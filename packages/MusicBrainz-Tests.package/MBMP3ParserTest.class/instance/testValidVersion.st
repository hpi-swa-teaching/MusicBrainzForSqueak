as yet unclassified
testValidVersion

	self emptyParser stream ascii.
	self emptyParser stream reset.
	self emptyParser stream nextPut: 3.
	self emptyParser stream reset.
	self emptyParser stream binary.
	
	self assert: (self emptyParser validVersion).
	self assert: 1 equals: (self emptyParser stream position)