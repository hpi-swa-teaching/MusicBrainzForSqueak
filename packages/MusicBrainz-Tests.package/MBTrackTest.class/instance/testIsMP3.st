as yet unclassified
testIsMP3

	| track flacTrack| 

	track := MBTrack new.
	track filepath: 'C/Music/test.mp3'.
	self
		assert: (track isMP3)
		equals: true
		description: 'Filepath was mp3 but not recognized as mp3'.

	flacTrack := MBTrack new.
	flacTrack filepath: 'C/Music/test.flac'.
	self 
		assert: (flacTrack isMP3)
		equals: false
		description: 'Filepath was flac but recognized as mp3'
