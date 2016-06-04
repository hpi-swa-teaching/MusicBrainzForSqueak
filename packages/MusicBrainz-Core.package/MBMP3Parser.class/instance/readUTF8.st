parsingFrames
readUTF8
	| content |
	
	content := ''.
	
	[ (self stream peekFor: 0)
		ifTrue: [	^content].
	content := content, self stream next asCharacter] repeat