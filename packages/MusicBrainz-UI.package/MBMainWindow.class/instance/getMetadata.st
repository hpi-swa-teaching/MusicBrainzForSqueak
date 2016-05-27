metadataView
getMetadata
	self selectedEntity class = MBAlbum
		ifTrue: [^ self getMetadataAlbum].
	self selectedEntity class = MBTrack
		ifTrue: [^ self getMetadataTrack]
		ifFalse: [^ #()]