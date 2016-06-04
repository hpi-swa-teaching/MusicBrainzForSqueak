building
editMetaData
	| splittedString metaDatumLabel newMetaDatum |
	
	self selectedMetadatum
	ifNotNil: 
		[splittedString:= self selectedMetadatum findTokens: ':'.
		metaDatumLabel:= splittedString first.
		newMetaDatum := UIManager default request: metaDatumLabel.
		self selectedEntity metadata at: metaDatumLabel put: newMetaDatum.
		self 
			changed: #getMetadata;
			changed: #albums]