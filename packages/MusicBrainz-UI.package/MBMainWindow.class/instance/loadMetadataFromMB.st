metadataView
loadMetadataFromMB
	self selectedEntity = nil
		ifTrue: [^ #()].
	self selectedEntity loadMetadataFromMB.
	self changed: #getMetadata.
	self changed: #albums.