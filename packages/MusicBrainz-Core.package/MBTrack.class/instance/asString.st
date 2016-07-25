accessing
asString
	| label length |
	label := self addTracknumber.
	label := label , self getTitle.
	self getArtists ~= self albumEntity getArtists
		ifTrue: [label := label, self class labelSeparator, self getArtists asCommaString].
	length := self getLengthInMinutes ifNil: [''].
	length ~= ''
		ifTrue: [label := label, self class labelSeparator, length].
	^ label