metadataView
getMetadata
	self selectedEntity class = MBalbum
		ifTrue: [^ self getMetadataAlbum].
	self selectedEntity class = MBtrack
		ifTrue: [^ self getMetadataTrack]
		ifFalse: [^ #()]