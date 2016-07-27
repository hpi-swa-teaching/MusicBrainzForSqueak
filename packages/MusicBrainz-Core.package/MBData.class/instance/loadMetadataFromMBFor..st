metadata-management
loadMetadataFromMBFor: aMBEntity
	aMBEntity ifNotNilDo: [:entity | entity loadMetadataFromMB]