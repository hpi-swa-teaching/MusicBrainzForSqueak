parsingFrames
readTextFrom: aSymbol With: aFrameSize
	| start encoding content |
	start := self stream position.
	encoding := self stream next.
	self stream binary.
	content := OrderedCollection new.
	
	[self stream position - start = aFrameSize
		ifTrue: [self track metadata at: (MBMP3Parser textFrames at: aSymbol) put: (content asByteArray asString).
			^ true].
	content add: self stream next] repeat