metadataView
getMetadata
	self selectedEntity = nil
		ifTrue: [^ #()].
	self getMetadataImage.
	self selectedEntity class entityName = 'release'
		ifTrue: [^ self getMetadataAlbum].
	self selectedEntity class entityName = 'recording'
		ifTrue: [^ self getMetadataTrack]