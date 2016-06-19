parsing
parseFrames
	[
	|tag tagmethod frameSize |
		((self id3size+9 <= self stream position) or: (self stream peekFor: 0))
			ifTrue: [^true].
		tag := self nextFrameTag.
		frameSize := self getFrameSize.
		self stream
				next;
				next.
				
		(tag first = $T)
			ifTrue: [ self readTextFrom: tag asSymbol With: frameSize.]
			ifFalse: [
				tagmethod := ('read', tag, ':') asSymbol.
				(self respondsTo: tagmethod)
					ifTrue: [ self perform: tagmethod with: frameSize]
					ifFalse: [ self skipFrame: frameSize].
			]

	] repeat

"Refactoren: tag first = $T ifFalse: [aNewMethod] --> respondsTo: is meta, zumal auch nur für APIC??"