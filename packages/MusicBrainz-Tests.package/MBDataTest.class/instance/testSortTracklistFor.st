TESTING: metadata-management
testSortTracklistFor
	
	| testAlbum |
	testAlbum := MBAlbum new.
	#(1 5 3 2 4) do: [:each | | track |
		track := MBTrack new.
		testAlbum tracklist add: track.
		track metadata at: #'Track Number' put: (each asString)].
	
	self
		assert: ((self data sortTracklistFor: testAlbum) collect: [:each | each metadata at: #'Track Number'])
		equals: #('1' '2' '3' '4' '5') asOrderedCollection
		description: 'SortTracklist should return list of tracks ordered by their tracknumber.'