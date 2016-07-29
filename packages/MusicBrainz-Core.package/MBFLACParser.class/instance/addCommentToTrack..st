parsing
addCommentToTrack: aString 
	| value label splitString|
	splitString := aString splitBy: '='.
	splitString size = 2
		ifTrue: [ label := self getLabelOf: (splitString first).
				value := splitString second.
				self track metadata at: label put: value]
		 ifFalse: [self error: 'Vorbis Comment malformed']
	