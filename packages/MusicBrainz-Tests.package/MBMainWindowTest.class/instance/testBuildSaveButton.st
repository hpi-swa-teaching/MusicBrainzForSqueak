as yet unclassified
testBuildSaveButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildSaveButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBMainWindow;
		assert: buttonSpec frame = (0.125@0.95 corner: 0.25@1);
		assert: buttonSpec label = 'Save';
		assert: buttonSpec action = 'saveToDisk'