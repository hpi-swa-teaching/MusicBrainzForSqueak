as yet unclassified
testArtists

	| artists  compareValue |
	
	artists := self album getArtists.
	compareValue := OrderedCollection newFrom: #('London Grammar' 'Disclosure').
	self assert: (artists = compareValue )