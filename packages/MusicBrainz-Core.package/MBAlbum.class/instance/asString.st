as yet unclassified
asString
	
	| label |
	label := self getTitle.
	self getArtists ifNotEmpty: [label := label, ' - ', self getArtists asCommaString].
	^ label