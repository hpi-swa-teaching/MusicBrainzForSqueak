parsing
seekParseableBlocks
	|blockinfo last length type|
	
	[blockinfo := self stream next.
	length := 0.
	
	last := blockinfo allMask: 16r80.
	type := blockinfo bitAnd: 16r7F.
	
	#(16 8 0 )
		do: [:each | length := length + (self stream next << each)].
	(type = 4)
		ifTrue:[self parseVorbisBlock]
		ifFalse: [
			(type = 6)
				ifTrue:[self parsePictureBlock]
				ifFalse:[self stream position: self stream position + length]
			].
	last ifTrue: [^ true]
		
		] repeat