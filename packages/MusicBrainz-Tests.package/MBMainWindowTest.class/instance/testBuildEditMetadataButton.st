as yet unclassified
testBuildEditMetadataButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildEditMetadataButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBMainWindow;
		assert: buttonSpec frame = (0.4@0.9 corner: 0.5@1);
		assert: buttonSpec label = 'Edit Metadata';
		assert: buttonSpec enabled = 'isMetadataSelected';
		assert: buttonSpec action = 'editMetadata'.