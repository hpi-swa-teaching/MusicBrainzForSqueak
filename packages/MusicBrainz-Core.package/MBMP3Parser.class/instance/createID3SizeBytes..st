writing
createID3SizeBytes: anInteger
	| size |
	size := OrderedCollection new.
	size addFirst: anInteger \\ 128.
	size addFirst: anInteger >> 7 \\ 128.
	size addFirst: anInteger >> 14 \\ 128.
	size addFirst: anInteger >> 21 \\ 128.
	^ size