as yet unclassified
testShowInInputFieldUsername

	self assert: (self settingsWindow showInInputFieldUsername) equals: (self settingsWindow settings at: 'Username')