parsingFrames
readTextFrom: aSymbol With: aFrameSize 
	| start content |
	start := self stream position.
	content := OrderedCollection new.
	"Encoding"
	self stream next = 1
		ifTrue: [self stream next: 2].
	[content add: self stream next]
		doWhileTrue: [self stream position - start < aFrameSize].
	self setMetadataFor: aSymbol with: content 
	