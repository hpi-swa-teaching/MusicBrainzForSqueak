parsing
prepareFile
	self seekID3.
	self validVersion
		ifFalse: [self error: 'Invalid ID3 Version'].
	self skipFlagsOfSize: 1.
	 self setID3Size