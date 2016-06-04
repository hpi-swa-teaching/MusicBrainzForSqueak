as yet unclassified
testBuildImportButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildImportButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBMainWindow;
		assert: buttonSpec frame = (0.35@0.9 corner: 0.45@1);
		assert: buttonSpec label = 'Import';
		assert: buttonSpec action = 'toggleImportWindow'