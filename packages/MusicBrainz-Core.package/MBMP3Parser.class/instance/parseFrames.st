parsing
parseFrames
	[self framesFinished]
		whileFalse:  [| tag frameSize |
	tag := self nextFrameTag.
	frameSize := self getFrameSize.
	"Skip Flags"
	self skipBytes: 2.
	tag first = $T
		ifTrue: [self readTextFrom: tag asSymbol With: frameSize]
		ifFalse: [tag = 'APIC'
				ifTrue: [self readAPIC: frameSize]
				ifFalse: [self skipBytes: frameSize]]]