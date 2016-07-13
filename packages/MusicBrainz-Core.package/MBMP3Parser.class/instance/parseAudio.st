parsing
parseAudio
	[self seekID3.
	self validVersion
		ifTrue: ["Skip Flags"
			self skipBytes: 1.
			self setID3Size; parseFrames]
		ifFalse: [self error: 'Invalid ID3 Version']]
		ensure: [self stream close]