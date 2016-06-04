parsing
getFrameSize
	| size |
	size := 0.
	#(24 16 8 0 )
		do: [:each | size := size + (self stream next << each)].
	^ size