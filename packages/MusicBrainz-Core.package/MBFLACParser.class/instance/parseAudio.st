parsing
parseAudio
	[self seekFLAC; parseBlocks]
	ensure: [self stream close]