accessing
addFile: aFile
	| parser |
	(self doesAlreadyExist: aFile)
		ifFalse: [parser := MBAudioParser newFrom: aFile.
			parser parseAudio.
			self addTrack: parser track]