as yet unclassified
testShowInInputFieldPassword

	self assert: (self settingsWindow showInInputFieldPassword) equals: (self settingsWindow settings at: 'Password')