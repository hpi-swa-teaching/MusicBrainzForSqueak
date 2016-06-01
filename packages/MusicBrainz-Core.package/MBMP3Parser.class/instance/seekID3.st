parsing
seekID3
	| read state |
	state := 1.
	[read := self stream next.
	read
		ifNil: [^ false].
	read = ('ID3' at: state)
		ifTrue: [state := state + 1]
		ifFalse: [state := 1].
	state = 4
		ifTrue: [^ true]] repeat