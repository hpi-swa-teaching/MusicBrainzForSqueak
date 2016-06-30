accessing
metadataToMerge
	^ metadataToMerge ifNil: [metadataToMerge := Array new: self getMetadataLabels size withAll: false]
