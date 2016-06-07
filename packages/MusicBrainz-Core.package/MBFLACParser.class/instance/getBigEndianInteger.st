parsing
getBigEndianInteger
	|length|
	length := 0.
	#(24 16 8 0 )
		do: [:each | length := length + (self stream next << each)].
	^ length