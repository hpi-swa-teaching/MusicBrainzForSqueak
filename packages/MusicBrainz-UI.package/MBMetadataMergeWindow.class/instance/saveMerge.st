actions
saveMerge
	self metadataToMerge
		doWithIndex: [:selected :index | 
			selected
				ifTrue: [self mainWindow data
						updateMetadataIn: self selectedEntity
						set: (self getMetadataLabels at: index)
						to: (self mBMetadata at: index)].
			self clearViews]