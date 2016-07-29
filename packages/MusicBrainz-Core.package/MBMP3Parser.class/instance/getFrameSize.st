parsing
getFrameSize
	| size |
	size := self stream next bitShift: 24.
	size := size + (self stream next bitShift: 16).
	size := size + (self stream next bitShift: 8).
	size := size + self stream next.
	^ size