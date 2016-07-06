metadata actions
updateMetadata: aString 
	self selectedMetadata
		ifNotNil: [self mainWindow data
				updateMetadataIn: self selectedEntity
				set: (self selectedMetadata asSymbol)
				to: aString asString.
			self updateViews]