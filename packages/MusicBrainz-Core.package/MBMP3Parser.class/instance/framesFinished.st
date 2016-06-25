parsing
framesFinished
	^ (self id3size + (MBMP3Parser ID3HeaderSize) < self stream position) or: (self stream peekFor: 0)