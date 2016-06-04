TESTING: opening and building
testBuildMetadataButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildMetadataButton.
	self
		assert: buttonSpec label = 'Load Metadata from MusicBrainz';
		assert: buttonSpec frame = (0.65@0.9 corner: 1@1);
		assert: buttonSpec action = 'loadMetadataFromMB'
		