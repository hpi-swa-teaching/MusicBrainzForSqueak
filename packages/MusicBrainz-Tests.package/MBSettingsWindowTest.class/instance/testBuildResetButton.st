as yet unclassified
testBuildResetButton
	| buttonSpec |
	self settingsWindow builder: MorphicToolBuilder new.
	buttonSpec := self settingsWindow buildResetButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBSettingsWindow;
		assert: buttonSpec action = 'resetSettings';
		assert: buttonSpec label = MBSettingsWindow labelForResetButton;
		assert: buttonSpec frame = (0@0.95 corner: 0.5@1)