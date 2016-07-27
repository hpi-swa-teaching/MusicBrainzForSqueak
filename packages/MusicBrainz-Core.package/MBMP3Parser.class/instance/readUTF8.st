parsingFrames
readUTF8
	| content |
	content := ''.
	
	[(self stream peekFor: 0)] whileFalse: [
	content := content , self stream next asCharacter].
	^ content