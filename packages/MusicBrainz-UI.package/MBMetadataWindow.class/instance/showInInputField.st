metadata actions
showInInputField
	self selectedMetadata
		ifNotNil: 
		[^ self selectedEntity metadata at: self selectedMetadata ifAbsent: [^ '']].
	^ ''