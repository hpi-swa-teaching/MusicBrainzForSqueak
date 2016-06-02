parsingFrames
readTextFrom: aSymbol With: aFrameSize
	| start encoding content |
	start := self stream position.
	self stream binary.
	encoding := self stream next.

	content := OrderedCollection new.
	(encoding = 1)
		ifTrue: [ 2 timesRepeat: [self stream next]].
	
	[self stream position - start = aFrameSize
		ifTrue: [self track metadata at: (MBMP3Parser textFrames at: aSymbol) put: (content asByteArray asString).
			^ true].
	content add: self stream next] repeat