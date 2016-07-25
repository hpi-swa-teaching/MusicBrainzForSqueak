parsing
parseAudio
	[self 
		prepareFile;
		parseFrames] ensure: [self stream close]