accessing
asString
	| label |
	label := self addTracknumber.
	self hasEssentialMetadata
		ifFalse: [label := label , '(!) '].
	label := label , self getTitle.
	^ label