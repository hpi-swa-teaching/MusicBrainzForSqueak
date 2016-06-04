TESTING: opening and building
testBuildSaveButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildSaveButton.
	self
		assert: buttonSpec label = 'Save';
		assert: buttonSpec frame = (0.2@0.9 corner: 0.3@1);
		assert: buttonSpec action = 'saveToDisk'
		