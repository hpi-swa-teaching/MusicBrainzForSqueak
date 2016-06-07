parsing
parseAudio

	self
		seekFLAC;
		seekParseableBlocks.
		
	self stream close