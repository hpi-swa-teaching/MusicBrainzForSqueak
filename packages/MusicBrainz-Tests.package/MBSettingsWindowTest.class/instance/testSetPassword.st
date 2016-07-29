as yet unclassified
testSetPassword

	| password |
	password := 'tEs7'.
	self settingsWindow setPassword: password.
	self assert: password equals: (self settingsWindow settings at: 'Password')