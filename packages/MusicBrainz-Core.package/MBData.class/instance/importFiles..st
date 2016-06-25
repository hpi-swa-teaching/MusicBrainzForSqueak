accessing
importFiles: aFileCollection
	| parser progressBar  |
	progressBar := ProgressMorph new openInWorld.
	progressBar label: 'Processing: Import'.
	
	aFileCollection do: [ :each |
		(self doesAlreadyExist: each)
		ifFalse:[
			parser := MBAudioParser newFrom: each.
			parser parseAudio.
			self addTrack: parser track.
			].
		progressBar incrDone: (1 / aFileCollection size)
		 ].
	progressBar delete