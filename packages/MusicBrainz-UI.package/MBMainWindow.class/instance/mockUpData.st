accessing
mockUpData
"Just for testing purposes
	| eins col track t c zwei |
	eins := MBalbum new.
	eins title: 'The Inevitable End'.
	eins artists: #('Röyksopp' 'Robyn') asOrderedCollection.
	col := OrderedCollection new.
	track := MBtrack new.
	track title: 'Skulls'.
	track tags at: #length put: 200000.
	t := MBtrack new.
	t title: 'Monument'.
	t tags at: #length put: 235165.
	col add: track.
	col add: t.
	eins trackCollection: col.
	
	zwei := MBalbum new.
	zwei title: 'Junior'.
	zwei artists: #('Röyksopp') asOrderedCollection.
	col := OrderedCollection new.
	track := MBtrack new.
	track title: 'Happy Up Here'.
	track tags at: #length put: 165154.
	t := MBtrack new.
	t title: 'Vision One'.
	t tags at: #length put: 143645.
	col add: track.
	col add: t.
	zwei trackCollection: col.
	c := OrderedCollection new.
	c add: eins.
	c add: zwei.
	importedAlbums := c.
	^ importedAlbums"