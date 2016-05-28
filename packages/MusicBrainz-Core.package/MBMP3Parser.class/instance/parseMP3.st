parsing
parseMP3
	"comment stating purpose of message"
	
	| flags|

	self seekID3.
	self validVersion
		ifFalse: [ self error: 'Invalid ID3 Version'].
	flags := self stream next.
	self setID3Size.

	self parseFrames.
	" for each frame:"
		
	
	
	
	