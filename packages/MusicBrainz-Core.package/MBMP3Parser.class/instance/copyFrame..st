writing
copyFrame: anInteger

	| frame start |
	start := self stream position.
	frame := OrderedCollection new.
	[ (self stream position = (start + anInteger))
		ifTrue: [^frame].
		frame add: self stream next.] repeat