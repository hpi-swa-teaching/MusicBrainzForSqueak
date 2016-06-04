building
editMetaData
	| splittedString metaDatumLabel newMetaDatum |
	
	selectedMetadatum 
	ifNotNil: 
		[splittedString:= selectedMetadatum findTokens: ':'.
		metaDatumLabel:= splittedString first.
		newMetaDatum :=UIManager default request: metaDatumLabel.
		selectedEntity metadata at: metaDatumLabel put: newMetaDatum.
		self 
			changed: #getMetadata;
			changed: #albums]