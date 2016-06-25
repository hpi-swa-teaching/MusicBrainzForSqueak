as yet unclassified
setUp

	super setUp.
	self track: MBTrack new.
	self track setMBID: 'ff827e98-6c22-4078-b5fd-40b92087d6c0'.
	self track metadata: (Dictionary newFrom: {#Artist->'Testartist1/Testartist2'.
		#Title->'Testtrack'.
		#Length->'201866'.
		#Year->'1970'.
		#Genre->'Testgenre'})