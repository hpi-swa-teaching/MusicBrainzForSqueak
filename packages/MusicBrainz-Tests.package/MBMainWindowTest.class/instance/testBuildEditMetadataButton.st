as yet unclassified
testBuildEditMetadataButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildEditMetadataButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBMainWindow;
		assert: buttonSpec frame = (0.85@0.95 corner: 1@1);
		assert: buttonSpec label = 'Edit Metadata';
		assert: buttonSpec enabled = 'isAlbumOrTrackSelected';
		assert: buttonSpec action = 'toggleMetadataWindow'.