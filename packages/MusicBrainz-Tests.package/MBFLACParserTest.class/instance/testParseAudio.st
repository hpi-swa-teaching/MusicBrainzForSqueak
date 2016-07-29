testing
testParseAudio
	|parser mockMetadata|
	
	parser := MBFLACParser new.
	parser openStreamOn: self flacfile.
	parser parseAudio.
	
	mockMetadata := Dictionary newFrom:{
	#Album->'Testalbum'.
	#Artist->'Interpret1, Interpret2'.
	#Composer->'Komponist2'.
	#Genre->'Alternative'.
	#'Part of set'->'1'.
	#Title->'SampleFlac'.
	#'Track Number'->'2'.
	#Year->'2014'
	}.
	
	self assert: mockMetadata equals: (parser track metadata).
	self assert: 500 equals: (parser track cover height).
	self assert: 500 equals: (parser track cover width)