metadataView
getMetadata
	self selectedEntity = nil
		ifTrue: [^ #()].
	self getMetadataImage.
	self selectedEntity isAlbum 
		ifTrue: [^ self getMetadataAlbum].
	self selectedEntity isTrack 
		ifTrue: [^ self getMetadataTrack]