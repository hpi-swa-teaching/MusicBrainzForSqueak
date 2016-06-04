parsingFrames
readUTF8
	| content |
	
	content := self stream next.
	
	[ (content last = 0)
		ifTrue: [ ^content].
	content := content, self stream next] repeat