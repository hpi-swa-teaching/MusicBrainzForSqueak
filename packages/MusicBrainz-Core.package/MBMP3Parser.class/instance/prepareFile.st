as yet unclassified
prepareFile
	self seekID3.
	self validVersion
		ifFalse: [self error: 'Invalid ID3 Version'].
	"skip flags"
	self skipBytes: 1.
	self setID3Size.