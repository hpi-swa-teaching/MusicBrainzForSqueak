as yet unclassified
testGetArtists
	
	self
		assert: (OrderedCollection newFrom: #('Testartist1' 'Testartist2'))
		equals: self album getArtists asOrderedCollection
		description: 'The artists of album do not match'