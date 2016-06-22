as yet unclassified
testParseAudio
	
	|parsedTrack|
	self parserFromFile parseAudio.
	parsedTrack := parserFromFile track.
	
	self assert:  'SampleSong' equals: parsedTrack getTitle.
	self assert: #('Interpret1; Interpret2') equals: parsedTrack getArtists.
	self assert: 'Alternative' equals: (parsedTrack metadata at: 'Genre').
	self assert: 'Testalbum' equals: (parsedTrack metadata at: 'Album').
	self assert: 'Testkomponist1' equals: (parsedTrack metadata at: 'Composer').
	self assert:  '10018' equals: (parsedTrack getLength) 