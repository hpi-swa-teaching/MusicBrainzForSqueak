im&ex-porting
importFiles: aFileCollection
	| parser |
	aFileCollection do: [ :each |
		parser := MBAudioParser newFrom: each.
		parser parseAudio.
		self addTrack: parser track
		 ].
	self changed: #albums.