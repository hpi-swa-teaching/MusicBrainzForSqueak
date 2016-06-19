metadataView
editMetadata
	| newMetadataValue splittedMetadataString |
	self selectedMetadata
		ifNotNil: 
		[splittedMetadataString := self splitMetadata.
		newMetadataValue := UIManager default request: (splittedMetadataString at: #label) initialAnswer: (splittedMetadataString at: #value).
		newMetadataValue ~= ''
			ifTrue: [self updateMetadataAt: (splittedMetadataString at: #label) Put: (newMetadataValue)]]
