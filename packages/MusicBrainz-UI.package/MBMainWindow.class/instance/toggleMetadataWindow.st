building
toggleMetadataWindow 
	self metadataWindow 
		ifNil: [self metadataWindow: (MBMetadataWindow openFrom: self)]