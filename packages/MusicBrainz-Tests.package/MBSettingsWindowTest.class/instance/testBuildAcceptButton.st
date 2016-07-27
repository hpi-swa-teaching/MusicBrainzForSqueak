as yet unclassified
testBuildAcceptButton
	| buttonSpec |
	self settingsWindow builder: MorphicToolBuilder new.
	buttonSpec := self settingsWindow buildAcceptButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBSettingsWindow;
		assert: buttonSpec action = 'saveSettings';
		assert: buttonSpec label = MBSettingsWindow labelForSaveButton;
		assert: buttonSpec frame = (0.5@0.9 corner: 1@1)