as yet unclassified
testCollectAllTracks
	
	self
		assert: self data collectAllTracks class
		equals: OrderedCollection
		description: 'Collection of tracks should be OrderedCollection'.
	self
		assert: (self data collectAllTracks allSatisfy: [:track | track isTrack])
		description: 'Collection of tracks should only contain MBTracks'