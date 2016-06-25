as yet unclassified
testParseAudio
	
	|parsedTrack parser|
	parser := MBMP3Parser new.
	parser openStreamOn: self mp3File.
	parser parseAudio.
	parsedTrack := parser track.
	
	self assert:  'SampleSong' equals: parsedTrack getTitle.
	self assert: #('Interpret1; Interpret2') equals: parsedTrack getArtists.
	self assert: 'Alternative' equals: (parsedTrack metadata at: 'Genre').
	self assert: 'Testalbum' equals: (parsedTrack metadata at: 'Album').
	self assert: 'Testkomponist1' equals: (parsedTrack metadata at: 'Composer').
	self assert:  '10018' equals: (parsedTrack getLength)