parsing
parseFLAC
	|comments|
	self
		seekFLAC;
		seekVorbisBlock.
	comments := self parseVorbisBlock.
	self stream close.
	^ comments