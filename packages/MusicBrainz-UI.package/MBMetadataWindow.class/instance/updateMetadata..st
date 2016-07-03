metadata actions
updateMetadata: aString 
	self selectedMetadata
		ifNotNil: [self mainWindow data
				updateMetadataIn: self selectedEntity
				set: self selectedMetadata
				to: aString asString.
			self updateViews]