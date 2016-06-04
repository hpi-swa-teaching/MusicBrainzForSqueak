TESTING: opening and building
testBuildLoadButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildLoadButton.
	self
		assert: buttonSpec label = 'Load';
		assert: buttonSpec frame = (0.05@0.9 corner: 0.15@1);
		assert: buttonSpec action = 'loadFromDisk'
		