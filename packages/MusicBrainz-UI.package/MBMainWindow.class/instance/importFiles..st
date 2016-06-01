im&ex-porting
importFiles: aFileCollection
	| parser |
	aFileCollection do: [ :each |
		parser := MBMP3Parser newFrom: each.
		parser parseMP3.
		self addTrack: parser track.
		 ]
	