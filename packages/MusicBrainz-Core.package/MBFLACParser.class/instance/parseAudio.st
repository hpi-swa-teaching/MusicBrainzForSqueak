parsing
parseAudio
	[self seekMagicIdentifier; parseBlocks]
	ensure: [self stream close]