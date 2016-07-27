as yet unclassified
setUp

	super setUp.
	self data: MBData new.
	self data addTrack: MBMockData mockTrack.
	self data addTrack: MBMockData mockTrack21