parsing
parseFrames
	[
	|tag tagmethod frameSize|
		((self id3size+9 <= self stream position) or: (self stream peekFor: (Character null)))
			ifTrue: [^true].
		tag := self nextFrameTag.
		frameSize := self getFrameSize.
		self stream
				next;
				next.
				
		Transcript showln: tag.
		
		tagmethod := ('read', tag, ':') asSymbol.
		(self respondsTo: tagmethod)
			ifTrue: [ self perform: tagmethod with: frameSize]
			ifFalse: [ self skipFrame: frameSize]

	] repeat.