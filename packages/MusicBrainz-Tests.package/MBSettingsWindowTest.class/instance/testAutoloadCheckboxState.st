TESTING: accessing
testAutoloadCheckboxState

	self 
		assert: self settingsWindow autoloadCheckboxState 
		equals: (self settingsWindow settings at: #Autoload).
	self settingsWindow autoloadCheckboxState: true.
	self 
		assert: self settingsWindow autoloadCheckboxState 
		equals: true