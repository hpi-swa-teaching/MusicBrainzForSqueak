accessing
asString
	| label | 
	label:= ''.
	self hasEssentialMetadata 
		ifFalse: [label:= '(!) '].
	label := label, self getTitle.
	^ label