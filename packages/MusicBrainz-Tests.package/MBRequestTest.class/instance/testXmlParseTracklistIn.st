as yet unclassified
testXmlParseTracklistIn

	self
		assert: (MBRequest xmlParseTracklistIn: MBMockData mockReleaseXML) class
		equals: OrderedCollection 
		description: 'parseTracklist should return an OrderedCollection'.
	self
		assert: (MBRequest xmlParseTracklistIn: MBMockData mockReleaseXML) size
		equals: 13
		description: 'There should be 13 tracks in tracklist'.