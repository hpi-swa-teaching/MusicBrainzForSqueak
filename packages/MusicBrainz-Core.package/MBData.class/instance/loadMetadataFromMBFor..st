accessing
loadMetadataFromMBFor: aMBEntity
	aMBEntity ifNil: [^ nil].
	aMBEntity loadMetadataFromMB