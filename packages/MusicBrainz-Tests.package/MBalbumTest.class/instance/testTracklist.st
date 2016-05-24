as yet unclassified
testTracklist

	| tracklist  |
	
	tracklist := self album getTracklist.
	self
		assert: (OrderedCollection newFrom: #('Hey Now' 'Stay Awake' 'Shyer' 'Wasting My Young Years' 'Sights' 'Strong' 'Nightcall' 'Metal & Dust' 'Interlude' 'Flickers' 'If You Wait' 'Hey Now' 'Stay Awake' 'Shyer' 'Wasting My Young Years' 'Sights' 'Strong' 'Nightcall' 'Metal & Dust' 'Interlude' 'Flickers' 'If You Wait' 'Help' 'Darling Are You Gonna Leave Me' 'Help Me Lose My Mind' 'High Life' 'Maybe' 'When We Were Young'))
		equals: tracklist
		description: 'The tracklist of album does not match'