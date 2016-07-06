accessing
asString
	| label |
	label:= ''.
	self hasEssentialMetadata 
		ifFalse: [label:= '(!) '].
	label := label, self getTitle.
	self getArtists
		ifNotEmpty: [label := label , ' - ' , self getArtists asCommaString].
	^ label