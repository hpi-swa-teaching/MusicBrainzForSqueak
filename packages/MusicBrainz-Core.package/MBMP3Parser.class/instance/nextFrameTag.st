parsing
nextFrameTag
	"comment stating purpose of message"

	| tag |
	
	tag := ''.
	
	4 timesRepeat: [ tag := tag, self stream next].
	
	^ tag
