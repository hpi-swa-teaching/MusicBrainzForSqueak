parsing
parseFLAC

	self
		seekFLAC;
		seekParseableBlocks.
		
	self stream close