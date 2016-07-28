as yet unclassified
testCopyFrame
	self emptyParser stream reset.
	self emptyParser stream nextPutAll: #($T $E $S $T ).
	self emptyParser stream reset.
	self
		assert: 'TEST'
		equals: (self emptyParser copyFrame: 4)