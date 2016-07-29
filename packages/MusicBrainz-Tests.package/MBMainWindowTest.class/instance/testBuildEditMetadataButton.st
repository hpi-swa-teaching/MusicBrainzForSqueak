TESTING: building
testBuildEditMetadataButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildEditMetadataButton.
	self 
		assert: PluggableButtonSpec equals: buttonSpec class;
		assert: MBMainWindow equals: buttonSpec model class;
		assert: (0.85@0.95 corner: 1@1) equals: buttonSpec frame;
		assert: MBMainWindow labelForEditMetadataButton equals: buttonSpec label;
		assert: 'isAlbumOrTrackSelected' equals: buttonSpec enabled;
		assert: 'toggleMetadataWindow' equals: buttonSpec action