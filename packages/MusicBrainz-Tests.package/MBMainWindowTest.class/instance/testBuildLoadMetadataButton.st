as yet unclassified
testBuildLoadMetadataButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildLoadMetadataButton.
	self 
		assert: PluggableButtonSpec equals: buttonSpec class;
		assert: MBMainWindow equals: buttonSpec model class;
		assert: (0.65@0.95 corner: 0.85@1) equals: buttonSpec frame;
		assert: MBMainWindow labelForLoadMetadataButton equals: buttonSpec label;
		assert: 'loadMetadataFromMB' equals: buttonSpec action