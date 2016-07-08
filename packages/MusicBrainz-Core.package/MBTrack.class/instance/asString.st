accessing
asString
	| label |
	label := ''.
	self metadata at: #'Track Number' ifPresentAndInMemory: [:trackNumber |
		label:= trackNumber, '.'.
		1 to: (6-(2*(self metadata at: #'Track Number') size)) do: [:i | label := label, ' ']].
	self hasEssentialMetadata 
		ifFalse: [label:= label, '(!) '].
	label := label, self getTitle.
	^ label