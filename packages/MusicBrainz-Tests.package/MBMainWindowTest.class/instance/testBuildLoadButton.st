as yet unclassified
testBuildLoadButton
	| buttonSpec |
	self mainWindow builder: MorphicToolBuilder new.
	buttonSpec := self mainWindow buildLoadButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBMainWindow;
		assert: buttonSpec frame = (0.0@0.95 corner: 0.125@1);
		assert: buttonSpec label = 'Load';
		assert: buttonSpec action = 'loadFromDisk'