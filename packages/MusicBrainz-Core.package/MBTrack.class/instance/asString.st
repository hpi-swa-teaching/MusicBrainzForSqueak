accessing
asString
	| label |
	label := self getTracknumberWithIndent, self getTitle.
	((self albumEntity isNil not) or: (self getArtists ~= self albumEntity getArtists))
		ifTrue: [label := label, self class labelSeparator, self getArtists asCommaString].
	self getLengthInMinutes ifNotNilDo: [:length | label := label, self class labelSeparator, length].
	^ label