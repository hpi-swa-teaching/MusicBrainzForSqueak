as yet unclassified
testXmlParseCountPerfectMatchesInFor

	self
		assert: (MBRequest xmlParseCountPerfectMatchesIn: MBMockData mockMBIDRecordingXML for: MBTrack new)
		equals: 2
		description: 'countPerfectMatches should return 2'