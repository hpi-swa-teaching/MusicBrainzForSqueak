parsingFrames
readSMIME
	|smime|
	smime := '' , self stream next asCharacter.
	[self stream peekFor: 0]
		whileFalse: [smime := smime , self stream next asCharacter].
	^ smime