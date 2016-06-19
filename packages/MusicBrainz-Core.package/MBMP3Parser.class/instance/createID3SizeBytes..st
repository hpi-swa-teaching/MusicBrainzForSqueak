writing
createID3SizeBytes: anInteger
	| size |
	
	size := OrderedCollection new.
	
	#(0 7 14 21) do: [:each | size addFirst: (anInteger >> each ) \\ 128 ].
	^ size