metadataView
updateMetadataAt: aLabel Put: aValue
	self selectedEntity metadata at: aLabel put: aValue.
	self selectedMetadata: nil;					
		changed: #getMetadata;
		changed: #albums