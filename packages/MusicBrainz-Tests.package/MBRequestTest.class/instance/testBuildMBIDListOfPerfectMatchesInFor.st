TESTING: request
testBuildMBIDListOfPerfectMatchesInFor

	self
		assert: (MBRequest buildMBIDListOfPerfectMatchesIn: MBMockData mockMBIDRecordingXML for: MBTrack new)
		equals: (OrderedCollection newFrom: #('627f4069-b27d-403f-9d50-62450d21cb41' '26134a4d-3181-42f5-9057-03d0940a8962'))
		description: 'MBIDList should only contain 100 percent scores'