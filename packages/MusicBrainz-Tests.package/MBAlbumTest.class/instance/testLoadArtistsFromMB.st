as yet unclassified
testLoadArtistsFromMB

	self
		assert: self album loadArtistsFromMB
		equals: 'London Grammar/Disclosure'
		description: 'Returned artists for album aren''t correct!'