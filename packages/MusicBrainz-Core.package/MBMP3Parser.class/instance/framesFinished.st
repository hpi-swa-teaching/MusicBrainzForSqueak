parsing
framesFinished
	^ (self id3size + (self class ID3HeaderSize) < self stream position) or: (self stream peekFor: 0)