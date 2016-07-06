metadataView
loadMetadataFromMB
	self halt.
	self data loadMetadataFromMBFor: self selectedEntity.
	self 
		changed: #getMetadata;
		changed: #albums