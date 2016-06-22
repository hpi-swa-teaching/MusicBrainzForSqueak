as yet unclassified
testSkipFrame

	self emptyParser stream reset.
	self emptyParser stream nextPutAll: #(0 0 0 0 0 0).
	self emptyParser stream reset.
	self emptyParser skipFrame: 6.
	
	self assert: 6 equals: (self emptyParser stream position)