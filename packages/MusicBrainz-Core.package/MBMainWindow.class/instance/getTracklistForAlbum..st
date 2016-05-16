as yet unclassified
getTracklistForAlbum: aString

	(aString class = MBalbum)
	ifTrue: [	^ aString getTracklist]
	ifFalse: [^ OrderedCollection new]
	