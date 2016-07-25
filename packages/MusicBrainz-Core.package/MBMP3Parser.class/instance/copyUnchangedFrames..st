writing
copyUnchangedFrames: aDictionary 
	| frames tag frameSize |
	frames := OrderedCollection new.
	[self id3size + 9 <= self stream position
		or: (self stream peekFor: 0)]
		whileFalse: [tag := self nextFrameTag.
			frameSize := self getFrameSize.
			(aDictionary
					includesKey: (self class textFrames
							at: tag asSymbol
							ifAbsent: []))
				ifTrue: [self skipBytes: frameSize + 2]
				ifFalse: [frames addAll: (self createFrame: tag with: frameSize)]].
	^ frames