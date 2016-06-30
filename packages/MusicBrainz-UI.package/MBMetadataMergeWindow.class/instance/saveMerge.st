building
saveMerge
	
	self metadataToMerge doWithIndex: [:selected :index |
		selected
			ifTrue: [self mainWindow data updateMetadataIn: self selectedEntity set: (self getMetadataLabels at: index) to: (self mBMetadata at: index)]].
	self localMetadata: nil.
	self mBMetadata: nil.
	self changed: #getMetadataLabels.
	self changed: #getLocalMetadata.
	self changed: #getMBMetadata.
	self mainWindow changed: #getMetadata