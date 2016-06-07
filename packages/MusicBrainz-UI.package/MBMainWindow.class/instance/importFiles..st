im&ex-porting
importFiles: aFileCollection
	| parser |
	aFileCollection do: [ :each |
		parser := MBMP3Parser newFrom: each fullName.
		parser parseMP3.
		self addTrack: parser track
		 ].
	self changed: #albums.