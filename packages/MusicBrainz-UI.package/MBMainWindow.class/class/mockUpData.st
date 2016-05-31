as yet unclassified
mockUpData
"Just for testing purposes"
	| eins col track t c zwei |
	eins := MBAlbum new.
	eins title: 'The Inevitable End'.
	eins artists: #('Röyksopp' 'Robyn') asOrderedCollection.
	col := OrderedCollection new.
	track := MBTrack new.
	track title: 'Skulls'.
	track tags at: #length put: 200000.
	t := MBTrack new.
	t title: 'Monument'.
	t tags at: #length put: 235165.
	col add: track.
	col add: t.
	eins trackCollection: col.
	
	zwei := MBAlbum new.
	zwei title: 'Junior'.
	zwei artists: #('Röyksopp') asOrderedCollection.
	col := OrderedCollection new.
	track := MBTrack new.
	track title: 'Happy Up Here'.
	track tags at: #length put: 165154.
	t := MBTrack new.
	t title: 'Vision One'.
	t tags at: #length put: 143645.
	col add: track.
	col add: t.
	zwei trackCollection: col.
	c := OrderedCollection new.
	c add: eins.
	c add: zwei.
	^ c