as yet unclassified
testSetAutoload
	| oldAutoloadState | 
	oldAutoloadState := self settingsWindow autoloadCheckboxState.
	self settingsWindow toggleAutoload.
	self assert: (settingsWindow settings at: 'Autoload') equals: self settingsWindow autoloadCheckboxState.
	self assert: oldAutoloadState equals: self settingsWindow autoloadCheckboxState not