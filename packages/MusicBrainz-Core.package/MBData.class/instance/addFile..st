accessing
addFile: aFile
	| parser |
	(self doesAlreadyExist: aFile)
		ifTrue: [ ^ nil].
	parser := MBAudioParser newFrom: aFile.
	parser parseAudio.
	self addTrack: parser track