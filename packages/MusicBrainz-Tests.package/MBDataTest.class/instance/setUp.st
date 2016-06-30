as yet unclassified
setUp

	super setUp.
	self data: MBData new.
	self data addTrack: MBMockData mockTrack.
	self data addTrack: MBMockData mockTrack21.
	self data addTrack: MBMockData mockTrack22.
	self data addTrack: MBMockData mockTrack23.
	self data addTrack: MBMockData mockTrack24.