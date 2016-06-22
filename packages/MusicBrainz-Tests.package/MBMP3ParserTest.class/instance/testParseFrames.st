as yet unclassified
testParseFrames

	self emptyParser stream ascii.
	self emptyParser stream reset.
	self emptyParser stream nextPutAll: #(0).
	self emptyParser stream reset.
	self emptyParser id3size: 2.
	self emptyParser stream binary.
	
	self assert: (self emptyParser parseFrames).

	self emptyParser stream ascii.
	self emptyParser stream reset.
	self emptyParser stream nextPutAll: #(1).
	self emptyParser stream reset.
	self emptyParser id3size: -10.
	self emptyParser stream binary.
	
	self assert: (self emptyParser parseFrames)