as yet unclassified
testShowInInputFieldEndpoint

	self assert: (self settingsWindow showInInputFieldEndpoint) equals: (self settingsWindow settings at: 'Endpoint')