TESTING: UI elements
testBuildShowFilesButton 
	| buttonSpec |
	self fileSelectionWindow builder: MorphicToolBuilder new.
	buttonSpec := self fileSelectionWindow buildShowFilesButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBFileSelectionWindow;
		assert: buttonSpec action = 'selectImportMethod';
		assert: buttonSpec label = MBFileSelectionWindow labelForShowFilesButton;
		assert: buttonSpec frame = (0.25@0 corner: 0.5@0.1)