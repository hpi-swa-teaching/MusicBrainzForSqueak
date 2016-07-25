writing
copyFrame: anInteger 
	| frame start |
	start := self stream position.
	frame := OrderedCollection new.
	[self stream position < (start + anInteger)]
		whileTrue: [frame add: self stream next].
	^ frame