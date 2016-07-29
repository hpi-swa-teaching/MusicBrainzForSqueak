TESTING: accessing
testPlayer
	self mainWindow player: MBMP3Player new.
	self 
		assert: self mainWindow player class 
		equals: MBMP3Player