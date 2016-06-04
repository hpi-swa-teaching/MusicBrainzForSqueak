TESTING: opening and building
testBuildEditMetadataButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildEditMetadataButton.
	self
		assert: buttonSpec label = 'Edit Metadata';
		assert: buttonSpec action = #editMetaData;
		assert: buttonSpec frame = (0.5@0.9 corner: 0.6@1)
		