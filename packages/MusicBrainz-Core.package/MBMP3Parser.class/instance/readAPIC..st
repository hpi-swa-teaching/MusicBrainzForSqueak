parsingFrames
readAPIC: aFrameSize 
	| start encoding smime description |
	start := self stream position.
	encoding := self stream next.
	smime := self readSMIME.
	"Skip type"
	self skipBytes: 1.
	encoding = 0
		ifTrue: [description := self readUTF8]
		ifFalse: [description := self readUTF16].
	self readImageUntil: start + aFrameSize with: smime