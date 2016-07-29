TESTING: accessing
testToggleAutoload
	| oldAutoloadState | 
	oldAutoloadState := self settingsWindow autoloadCheckboxState.
	self settingsWindow toggleAutoload.
	self 
		assert: (settingsWindow settings at: 'Autoload') 
		equals: self settingsWindow autoloadCheckboxState;
		assert: oldAutoloadState 
		equals: self settingsWindow autoloadCheckboxState not