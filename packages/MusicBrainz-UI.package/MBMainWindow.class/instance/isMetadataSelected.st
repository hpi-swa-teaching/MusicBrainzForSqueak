accessing
isMetadataSelected
	self selectedMetadata
		ifNil: [^ false]
		ifNotNil: [^(self selectedMetadata ~= '' and: self selectedMetadata ~= 'More: ')]