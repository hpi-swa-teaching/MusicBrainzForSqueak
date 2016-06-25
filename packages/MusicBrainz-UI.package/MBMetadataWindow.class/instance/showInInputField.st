as yet unclassified
showInInputField
	self selectedMetadata
		ifNotNil: 
		[^ self mainWindow selectedEntity metadata at: self selectedMetadata ifAbsent: [^ '']].
	^ ''