parsing
nextFrameTag
	| tag |
	tag := ''.
	4
		timesRepeat: [tag := tag , self stream next].
	^ tag