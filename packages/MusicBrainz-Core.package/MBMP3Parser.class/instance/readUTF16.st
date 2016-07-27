parsingFrames
readUTF16
	| content |
	content := OrderedCollection new.
	[(content last = 0
			and: (self stream peekFor: 0))]whileFalse: [content add: self stream next].
	^ content asByteArray asString