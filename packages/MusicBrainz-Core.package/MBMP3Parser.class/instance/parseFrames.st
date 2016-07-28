parsing
parseFrames
| tag frameSize |
	self areFramesFinished
		ifTrue:  [^true].
	tag := self nextFrameTag.
	frameSize := self getFrameSize.
	self skipFlagsOfSize: 2.
	tag first = $T
		ifTrue: [self parseTextFrom: tag asSymbol with: frameSize]
		ifFalse: [tag = 'APIC'
				ifTrue: [self parseAPIC: frameSize]
				ifFalse: [self skipBytes: frameSize]].
	^ self parseFrames