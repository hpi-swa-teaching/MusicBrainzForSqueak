as yet unclassified
testSetID3Size

	self emptyParser stream ascii.
	self emptyParser stream reset.
	self emptyParser stream nextPutAll: #(0 25 114 50).
	self emptyParser stream reset.
	self emptyParser stream binary.
	self emptyParser setID3Size.
	
	self assert: 424242 equals: (self emptyParser id3size).
	self assert: 4 equals: (self emptyParser stream position)