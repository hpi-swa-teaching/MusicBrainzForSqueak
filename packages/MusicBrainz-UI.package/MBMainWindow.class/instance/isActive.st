building
isActive
	self selectedMetadata
		ifNil: [^ false]
		ifNotNil: [(self selectedMetadata ~= '' and: self selectedMetadata ~= 'More: ')
				ifTrue: [^ true]
				ifFalse: [^ false]]