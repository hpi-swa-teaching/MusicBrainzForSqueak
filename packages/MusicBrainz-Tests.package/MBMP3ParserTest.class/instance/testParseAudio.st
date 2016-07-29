testing
testParseAudio
	|parser mockMetadata|
	
	parser := MBMP3Parser new.
	parser openStreamOn: self mp3File.
	parser parseAudio.
	
	mockMetadata := Dictionary newFrom:{
	#Album->'Testalbum'.
	#Artist->'Interpret1; Interpret2'.
	#Composer->'Testkomponist1'.
	#Genre->'Alternative'.
	#Length->'10018'.
	#'Part of set'->'1'.
	#Title->'SampleSong'.
	#'Track Number'->'1'.
	#Year->'2014'
	}.
	
	self assert: mockMetadata equals: (parser track metadata).
	self assert: 500 equals: (parser track cover height).
	self assert: 500 equals: (parser track cover width)