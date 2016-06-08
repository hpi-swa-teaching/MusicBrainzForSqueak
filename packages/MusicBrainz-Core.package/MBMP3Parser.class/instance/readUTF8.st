parsingFrames
readUTF8
"close to getUTF8String: from MBFLACParser?"
	| content |
	content := ''.
	[ (self stream peekFor: 0)
		ifTrue: [	^content].
	content := content, self stream next asCharacter] repeat