as yet unclassified
testAddTrack
	self mainWindow addTrack: MBMockData mockTrack.
	self
		assert: (self mainWindow albums
				do: [:album | album tracklist
						do: [:track | ^ track filepath = MBMockData mockTrack filepath]])