building
isActive
	self selectedMetadatum 
		ifNil: [ ^ false]
		ifNotNil: [ ^ true]