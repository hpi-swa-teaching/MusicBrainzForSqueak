as yet unclassified
testXmlParseFirstTagNamedContainingIn

	self
		assert: (MBRequest xmlParseFirstTagNamed: #area containingFirst: #name in: MBMockData mockRecordingXML)
		equals: 'Romania'