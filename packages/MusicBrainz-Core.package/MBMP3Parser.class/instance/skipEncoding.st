parsingFrames
skipEncoding
	self stream next = 1
		ifTrue: [self skipBytes: 2]