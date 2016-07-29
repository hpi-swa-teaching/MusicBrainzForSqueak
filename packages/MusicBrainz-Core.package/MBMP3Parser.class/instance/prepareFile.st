parsing
prepareFile
	self seekMagicIdentifier.
	self validVersion
		ifFalse: [self error: 'Invalid ID3 Version'].
	self skipFlagsOfSize: 1.
	 self setID3Size