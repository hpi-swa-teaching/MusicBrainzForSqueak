parsingFrames
readAPIC: aFrameSize
	| start encoding smime type description imagestream |
	start := self stream position.
	encoding := self stream next.
	smime := '', self stream next asCharacter.
	
	[self stream peekFor: 0] whileFalse: [
		smime := smime, self stream next asCharacter.
		].
	
	type := self stream next.
	
	encoding = 0
		ifTrue: [ description := self readUTF8]
		ifFalse:[ description := self readUTF16].
	
	imagestream := RWBinaryOrTextStream on: OrderedCollection new.
	[self stream position - start = aFrameSize
		ifTrue: [ (smime = 'image/jpeg')
				ifTrue: [self track cover: (JPEGReadWriter2 formFromStream: (imagestream))]
				ifFalse: [self track cover: (PNGReadWriter formFromStream: (imagestream))].
				
			^ true].
	imagestream nextPut: self stream next] repeat
