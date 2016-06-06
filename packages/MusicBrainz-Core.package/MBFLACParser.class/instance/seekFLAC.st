parsing
seekFLAC
	| read state |
	state := 1.
	[read := self stream next.
	read
		ifNil: [^ false].
	read asCharacter = ('fLaC' at: state)
		ifTrue: [state := state + 1]
		ifFalse: [state := 1].
	state = 5
		ifTrue: [^ true]] repeat