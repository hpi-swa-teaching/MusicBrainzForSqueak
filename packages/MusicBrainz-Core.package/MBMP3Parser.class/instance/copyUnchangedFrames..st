writing
copyUnchangedFrames: aDictionary 
	| frames frame tag frameSize |
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
		ifFalse: [frame := OrderedCollection new.
			frame addAll: tag asOrderedCollection;
				
				addAll: (self createFrameSizeBytes: frameSize);
				
				addAll: (self stream next: 2);
				
				addAll: (self copyFrame: frameSize).
			frames addAll: frame]].
	^ frames