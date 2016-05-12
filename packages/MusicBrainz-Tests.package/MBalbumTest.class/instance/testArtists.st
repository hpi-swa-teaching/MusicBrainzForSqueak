as yet unclassified
testArtists

	| artists  compareValue |
	
	artists := self album getArtists.
	compareValue := Set new.
	compareValue add: 'London Grammar';
		add: 'Disclosure'.
	self assert: (artists = compareValue )