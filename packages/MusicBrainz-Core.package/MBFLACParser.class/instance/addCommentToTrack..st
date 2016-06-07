parsing
addCommentToTrack: aString
	|key value delimeterpos|
	
	delimeterpos := aString indexOf: $= ifAbsent: [self error: 'Vorbis Comment malformed'].
	key := aString copyFrom: 1 to:  (delimeterpos - 1).
	value := aString copyFrom: (delimeterpos + 1) to: (aString size).
	self track metadata at: key put: value.