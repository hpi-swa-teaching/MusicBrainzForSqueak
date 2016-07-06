metadataView
loadMetadataFromMB
	self data loadMetadataFromMBFor: self selectedEntity.
	self 
		changed: #getMetadata;
		changed: #albums