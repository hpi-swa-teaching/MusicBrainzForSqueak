as yet unclassified
testAddTrack
	| newTrack |
	newTrack := MBTrack new filepath: 'C:/Another/Path/to.mp3'.
	self data addTrack: newTrack.
	self
		assert: (self data albums
					anySatisfy: [:album | album tracklist
						anySatisfy: [:track | track filepath = MBMockData mockTrack filepath]])
		description: 'New track is not in any album'.