as yet unclassified
testHasEssentialMetadata
	| album |
	album := MBMockData mockAlbum.
	self
		assert: album hasEssentialMetadata
		equals: false.
	album metadata at: #Year put: '2013'.
	self 
		assert: album hasEssentialMetadata 
		equals: true