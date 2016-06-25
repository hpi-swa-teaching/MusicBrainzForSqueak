parsing
parseFrames
	[|tag frameSize |
	self framesFinished
		ifTrue: [^true].
	tag := self nextFrameTag.
	frameSize := self getFrameSize.
	self stream next: 2.
			
	(tag first = $T)
		ifTrue: [ self readTextFrom: tag asSymbol With: frameSize.]
		ifFalse: [
			(tag = 'APIC')
				ifTrue: [ self readAPIC: frameSize]
				ifFalse: [ self skipFrame: frameSize].]
	] repeat