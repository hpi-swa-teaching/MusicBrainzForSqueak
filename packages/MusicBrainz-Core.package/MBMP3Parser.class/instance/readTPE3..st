parsingFrames
readTPE3: frameSize
	"comment stating purpose of message"
	
	| start encoding content |
	
	start := self stream position.
	encoding := self stream next.
	content := ''.
	
	[ (self stream position - start = frameSize)
		ifTrue: [ self track tags at: 'Conductor' put: content.
				Transcript showln: 'Conductor: ', content.
				^ true].
	  content := content , self stream next.
	] repeat