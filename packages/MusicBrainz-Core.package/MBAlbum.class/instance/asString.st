accessing
asString
	| label |
	label := self getTitle.
	self getArtists
		ifNotEmpty: [label := label, self class labelSeparator, self getArtists asCommaString].
	^ label