as yet unclassified
testBuildMetadataButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildMetadataButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBMainWindow;
		assert: buttonSpec frame = (0.65@0.9 corner: 0.9@1);
		assert: buttonSpec label = 'Load Metadata from MusicBrainz';
		assert: buttonSpec action = 'loadMetadataFromMB'