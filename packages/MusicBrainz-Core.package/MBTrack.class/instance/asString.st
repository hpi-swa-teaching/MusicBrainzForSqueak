accessing
asString
	| label length |
	label := self addTracknumber.
	self hasEssentialMetadata
		ifFalse: [label := label , '(!) '].
	length := self getLengthInMinutes ifNil: [''].
	label := label , self getTitle, ' ', length.
	^ label