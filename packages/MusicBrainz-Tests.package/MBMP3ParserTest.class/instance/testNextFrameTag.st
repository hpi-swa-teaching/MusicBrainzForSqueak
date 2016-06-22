as yet unclassified
testNextFrameTag

	self emptyParser stream ascii.
	self emptyParser stream reset.
	self emptyParser stream nextPutAll: #($T $E $S $T).
	self emptyParser stream reset.
	self emptyParser stream binary.
	
	self assert: 'TEST' equals: (self emptyParser nextFrameTag).
	self assert: 4 equals: (self emptyParser stream position)