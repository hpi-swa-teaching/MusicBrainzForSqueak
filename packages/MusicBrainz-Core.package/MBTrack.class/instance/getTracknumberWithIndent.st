accessing
getTracknumberWithIndent 
	| label |
	self metadata at: #'Track Number'
		ifPresentAndInMemory: [:trackNumber | 
			label := trackNumber, '.'.
			1 to: 6 - (2 * (self metadata at: #'Track Number') size) do: [:i | label := label , ' ']].
	^ label ifNil: [^ '']