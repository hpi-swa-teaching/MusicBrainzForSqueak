TESTING: building
testBuildResetToDefaultButton
	| buttonSpec |
	self settingsWindow builder: MorphicToolBuilder new.
	buttonSpec := self settingsWindow buildResetToDefaultButton.
	self 
		assert: buttonSpec class = PluggableButtonSpec;
		assert: buttonSpec model class = MBSettingsWindow;
		assert: buttonSpec action = 'resetSettingsToDefault';
		assert: buttonSpec label = MBSettingsWindow labelForResetToDefaultButton;
		assert: buttonSpec frame = (0@0.9 corner: 0.5@0.95)