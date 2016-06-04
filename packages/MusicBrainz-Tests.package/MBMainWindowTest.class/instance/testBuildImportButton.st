TESTING: opening and building
testBuildImportButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildImportButton.
	self
		assert: buttonSpec label = 'Import';
		assert: buttonSpec frame = (0.35@0.9 corner: 0.45@1);
		assert: buttonSpec action = 'toggleImportWindow'
		