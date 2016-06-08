parsingFrames
readTextFrom: aSymbol With: aFrameSize
	| start encoding content label |
	start := self stream position.
	encoding := self stream next.

	content := OrderedCollection new.
	(encoding = 1)
		ifTrue: [ 2 timesRepeat: [self stream next]].
	
	[self stream position - start = aFrameSize
		ifTrue: [	label := self class textFrames at: aSymbol ifAbsent:[self inform: 'Included an unknown tag: T', aSymbol. ('T', aSymbol) asSymbol].
				self track metadata at: label put: (content asByteArray asString).
			^ true].
	content add: self stream next] repeat

"aufteilen"