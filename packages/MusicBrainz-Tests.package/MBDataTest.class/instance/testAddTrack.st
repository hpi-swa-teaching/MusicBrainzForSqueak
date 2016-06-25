as yet unclassified
testAddTrack
	| newTrack |
	newTrack := MBTrack new filepath: 'C:/Another/Path/to.mp3'.
	self data addTrack: newTrack.
	self
		assert: (self data albums
				do: [:album | album tracklist
						do: [:track | ^ track filepath = MBMockData mockTrack filepath]])