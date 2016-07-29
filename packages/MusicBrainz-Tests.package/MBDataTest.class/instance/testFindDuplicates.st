TESTING: metadata-management
testFindDuplicates

	| track1 track2 |
	track1 := MBTrack new.
	track2 := MBTrack new.
	track1 metadata at: #Album put: 'Test'.
	track2 metadata at: #Album put: 'Test'.
	track1 metadata at: #Artist put: 'Testartist'.
	track2 metadata at: #Artist put: 'Testartist'.
	
	self data addTrack: track1;
		addTrack: track2.
	
	self
		assert: (self data findDuplicates includes: track1)
		description: 'FindDuplicates should have found identical tracks'