parsingFrames
readUTF16
	| content |
	
	self stream binary.
	content := OrderedCollection new.
	
	[ ((content last = 0) and: (self stream peekFor: 0))
		ifTrue: [ self stream ascii.
				content add: self stream next.
				^content asByteArray asString].
	content add: self stream next] repeat