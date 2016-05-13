as yet unclassified
tracksForAlbum: album
	(album = #Peace)
	ifTrue: [^ #('Ghettoblaster' 'Ich steh am Mikro...' '...Dabei kann ich gar nicht singen...' 'Autotune an...' ).].
	(album = #newAlbum)
	ifTrue: [^ #('Track#1' 'Track#2' 'Track#3' ).].
	^ {}.