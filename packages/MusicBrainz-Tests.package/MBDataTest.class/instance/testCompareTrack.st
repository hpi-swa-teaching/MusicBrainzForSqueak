as yet unclassified
testCompareTrack

	| testTrack1 testTrack2 |
	testTrack1 := MBTrack new.
	testTrack1 metadata at: #'Artist' put: 'Artist1'.
	testTrack1 metadata at: #'Title' put: 'Track1'.
	testTrack2 := MBTrack new.
	testTrack2 metadata at: #'Artist' put: 'Artist1'.
	testTrack2 metadata at: #'Title' put: 'Track2'.	
	self
		deny: (self data compareTrack: testTrack1 with: testTrack2)
		description: 'Tracks should not be similar'.
	testTrack2 metadata at: #'Title' put: 'Track1'.
	self
		assert: (self data compareTrack: testTrack1 with: testTrack2)
		description: 'Tracks should be similar'.
	testTrack2 metadata at: #'Artist' put: 'Artist2'.	
	self
		deny: (self data compareTrack: testTrack1 with: testTrack2)
		description: 'Tracks should not be similar'.
	
