parsing
seekFLAC
	| state |
	state := 1.
	[self stream next asCharacter
			= ('fLaC' at: state)
		ifTrue: [state := state + 1]
		ifFalse: [state := 1].
	state = 5
		ifTrue: [^ true]]
		doWhileFalse: [self stream atEnd].
	^ false