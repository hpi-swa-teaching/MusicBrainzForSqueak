as yet unclassified
testLoadTracksFromMB

	self
		assert: self album loadTracksFromMB first class
		equals: MBTrack 
		description: 'Returned tracks should be of type MBTrack!'