parsingFrames
readTextFrom: aSymbol With: aFrameSize
	| start encoding content |
	start := self stream position.
	encoding := self stream next.
	content := ''.
	
	[self stream position - start = aFrameSize
		ifTrue: [self track tags at: (MBMP3Parser textFrames at: aSymbol) put: content.
			^ true].
	content := content , self stream next] repeat