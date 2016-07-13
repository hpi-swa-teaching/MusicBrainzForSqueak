as yet unclassified
testSkipBytes

	self emptyParser stream reset.
	self emptyParser stream nextPutAll: #(0 0 0 0 0 0).
	self emptyParser stream reset.
	self emptyParser skipBytes: 6.
	
	self assert: 6 equals: (self emptyParser stream position)