as yet unclassified
testArtists

	| artists |
	
	artists := self album getArtists.
	self
		assert: (OrderedCollection newFrom: #('London Grammar' 'Disclosure'))
		equals: artists
		description: 'The artists of album do not match'