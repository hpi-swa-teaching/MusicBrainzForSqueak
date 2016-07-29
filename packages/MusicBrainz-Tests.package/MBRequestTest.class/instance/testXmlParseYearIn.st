TESTING: parsing
testXmlParseYearIn

	self
		assert: (MBRequest xmlParseYearIn: MBMockData mockRecordingXML)
		equals: '2015'
		description: 'Year from xml should be 2015'