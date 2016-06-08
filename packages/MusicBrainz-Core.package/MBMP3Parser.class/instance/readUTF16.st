parsingFrames
readUTF16
	| content |
	content := OrderedCollection new.
	[ ((content last = 0) and: (self stream peekFor: 0))
		ifTrue: [	^content asByteArray asString].
	content add: self stream next] repeat