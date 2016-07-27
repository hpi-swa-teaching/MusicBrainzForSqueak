parsing
parseAudio
	[self seekFLAC; seekParseableBlocks]
	ensure: [self stream close]