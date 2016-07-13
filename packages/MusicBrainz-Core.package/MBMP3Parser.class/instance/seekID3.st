parsing
seekID3
	| state |
	state := 1.
	[self stream next asCharacter
			= ('ID3' at: state)
		ifTrue: [state := state + 1]
		ifFalse: [state := 1].
	state = 4
		ifTrue: [^ true]]
		doWhileFalse: [self stream atEnd].
	^ false