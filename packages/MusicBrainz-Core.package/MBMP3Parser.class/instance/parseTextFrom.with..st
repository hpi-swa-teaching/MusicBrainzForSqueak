parsingFrames
parseTextFrom: aSymbol with: aFrameSize 
	| start |
	start := self stream position.
	self skipEncoding.
	self setMetadataFor: aSymbol with: (self stream next: aFrameSize - (self stream position - start)) asOrderedCollection
	