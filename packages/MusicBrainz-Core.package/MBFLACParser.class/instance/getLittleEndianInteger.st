parsing
getLittleEndianInteger
	|length|
	length := 0.
	#(0 8 16 24 )
		do: [:each | length := length + (self stream next << each)].
	^ length