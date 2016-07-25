accessing
asString
	| label |
	label := self getTitle.
	self getArtists
		ifNotEmpty: [label := label, self class labelSeparator, self getArtists asCommaString].
	self getLength ~= 0
		ifTrue: [label := label, self class labelSeparator, (self convertMillisecToMinutes: self getLength) asString].
	^ label