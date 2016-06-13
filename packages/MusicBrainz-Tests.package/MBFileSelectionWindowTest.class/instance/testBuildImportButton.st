TESTING: UI elements
testBuildImportButton 
	| buttonSpec |
	self fileSelectionWindow builder: MorphicToolBuilder new.
	buttonSpec := self fileSelectionWindow buildImportButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBFileSelectionWindow;
		assert: buttonSpec action = 'importFiles';
		assert: buttonSpec label = MBFileSelectionWindow labelForImportButton;
		assert: buttonSpec frame = (0@0 corner: 0.25@0.1)