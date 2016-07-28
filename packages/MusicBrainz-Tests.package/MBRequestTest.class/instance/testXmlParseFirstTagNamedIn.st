as yet unclassified
testXmlParseFirstTagNamedIn

	self
		assert: (MBRequest xmlParseFirstTagNamed: #title in: MBMockData mockRecordingXML)
		equals: 'Shots'
		description: 'First title-tag should be shots'