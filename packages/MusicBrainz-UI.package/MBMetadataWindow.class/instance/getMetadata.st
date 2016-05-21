as yet unclassified
getMetadata
	(self selectedEntity class = MBalbum)
		ifTrue: [^ self getAlbumMetadata].
	(self selectedEntity class = MBtrack)
		ifTrue: [^ self getTrackMetadata]
		ifFalse: [^ #()]