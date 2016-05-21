as yet unclassified
getTracklistForAlbum: aString

	(aString class = MBalbum)
	ifTrue: [	^ aString getTracks]
	ifFalse: [^ OrderedCollection new]
	
	