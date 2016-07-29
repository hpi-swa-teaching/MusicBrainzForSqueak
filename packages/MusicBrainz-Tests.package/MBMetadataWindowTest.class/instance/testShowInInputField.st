as yet unclassified
testShowInInputField
	| returnValue |
	returnValue := self metadataWindow showInInputField.
	self metadataWindow selectedMetadata 
	ifNotNil: [self assert: returnValue 
			equals: (self metadataWindow selectedEntity metadata at: self selectedMetadata ifAbsent: [^ ''])]
	ifNil: [self assert: returnValue isEmpty]