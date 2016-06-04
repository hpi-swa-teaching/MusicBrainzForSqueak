as yet unclassified
testBuildLoadButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildLoadButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBMainWindow;
		assert: buttonSpec frame = (0.05@0.9 corner: 0.15@1);
		assert: buttonSpec label = 'Load';
		assert: buttonSpec action = 'loadFromDisk'