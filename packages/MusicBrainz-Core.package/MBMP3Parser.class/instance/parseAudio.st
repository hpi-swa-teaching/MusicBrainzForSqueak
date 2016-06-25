parsing
parseAudio
	| flags |
	self seekID3.
	self validVersion
		ifFalse: [self error: 'Invalid ID3 Version']
		ifTrue: [
			flags := self stream next.  "Wofür werden die gebraucht? und kann der untere Teil nicht in ein ifTrue:?"
			self 
				setID3Size;
				parseFrames.
			self stream close]