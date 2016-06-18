writing
createFrameSizeBytes: anInteger
	| size |
	
	size := OrderedCollection new.
	
	#(0 8 16 24) do: [:each | size addFirst: (anInteger >> each )\\ 256 ].
	^ size