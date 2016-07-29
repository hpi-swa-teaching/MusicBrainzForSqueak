testing
testGetFrameSize

	self emptyParser stream ascii.
	self emptyParser stream reset.
	self emptyParser stream nextPutAll: #(0 6 121 50).
	self emptyParser stream reset.
	self emptyParser stream binary.
	
	self assert: 424242 equals: (self emptyParser getFrameSize).
	self assert: 4 equals: (self emptyParser stream position)