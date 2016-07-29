TESTING: accessing
testLabelForAutoload

	self 
		assert: self settingsWindow labelForAutoload 
		equals: 'Load library on start up'