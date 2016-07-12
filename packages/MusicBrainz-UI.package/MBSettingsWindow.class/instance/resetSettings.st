as yet unclassified
resetSettings
	self settings: (Dictionary newFrom: self mainWindow data settings).
	self changed: #showInInputFieldEndpoint;
		changed: #showInInputFieldUsername;
		changed: #showInInputFieldPassword;
		changed: #autoloadCheckboxState