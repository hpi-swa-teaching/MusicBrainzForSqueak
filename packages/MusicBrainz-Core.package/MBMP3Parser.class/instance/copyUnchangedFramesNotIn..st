writing
copyUnchangedFramesNotIn: aDictionary 
	| frames tag frameSize |
	frames := OrderedCollection new.
	[self areFramesFinished]
		whileFalse: [tag := self nextFrameTag.
			frameSize := self getFrameSize.
			(self hasFrameChanged: tag of: aDictionary) 
				ifTrue: [self skipBytes: frameSize + 2]
				ifFalse: [frames
						addAll: (self createFrame: tag with: frameSize)]].
	^ frames