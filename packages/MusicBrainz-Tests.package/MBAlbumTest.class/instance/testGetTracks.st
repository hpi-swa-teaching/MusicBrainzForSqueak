as yet unclassified
testGetTracks

	self
		assert: self album getTracks class 
		equals: OrderedCollection
		description: 'getTrack does not return a OrderedCollection!'