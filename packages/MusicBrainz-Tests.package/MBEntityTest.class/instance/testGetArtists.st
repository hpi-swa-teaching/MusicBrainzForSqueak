as yet unclassified
testGetArtists

	self
		assert: self entity getArtists asOrderedCollection
		equals: #('Testartist1' 'Testartist2') asOrderedCollection
		description: 'The artists of enitity do not match'