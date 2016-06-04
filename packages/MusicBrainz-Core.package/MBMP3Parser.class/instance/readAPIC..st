parsingFrames
readAPIC: aFrameSize
	| start encoding smime type description imagestream |
	start := self stream position.
	encoding := self stream next.
	smime := self stream next.
	
	(smime last <> 0) whileTrue: [
		smime := smime, self stream next.
		].
	
	type := self stream next.
	
	encoding = 0
		ifTrue: [ description := self readUTF8]
		ifFalse:[ description := self readUTF16].
	
	
	imagestream := RWBinaryOrTextStream new.
	(encoding = 1)
		ifTrue: [ 2 timesRepeat: [self stream next]].
	
	[self stream position - start = aFrameSize
		ifTrue: [ (smime = 'image/jpeg')
				ifTrue: [self track cover: (JPEGReadWriter2 formFromStream: imagestream).]
				ifFalse: [self track cover: (PNGReadWriter formFromStream: stream).].
				
			^ true].
	imagestream nextPut: self stream next] repeat
