parsing
addCommentToTrack: aString
	|key value delimeterPos label |
	
	delimeterPos := aString indexOf: $= ifAbsent: [self error: 'Vorbis Comment malformed'].
	key := aString copyFrom: 1 to:  (delimeterPos - 1).
	label := self class textFrames at: (Unicode toUppercase: key) ifAbsent: [label := key].
	value := aString copyFrom: (delimeterPos + 1) to: (aString size).
	self track metadata at: label put: value