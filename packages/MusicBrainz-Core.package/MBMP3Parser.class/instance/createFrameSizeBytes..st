writing
createFrameSizeBytes: anInteger
	| size |
	size := OrderedCollection new.
	size addFirst: anInteger \\ 256.
	size addFirst: (anInteger >> 8) \\ 256.
	size addFirst: (anInteger >> 16) \\ 256.
	size addFirst: (anInteger >> 24) \\ 256.
	^ size