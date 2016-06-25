as yet unclassified
testConvertMilliSecToMinutes

	self 
		assert: ((self track convertMillisecToMinutes: 1000) = '0:01');
		assert: ((self track convertMillisecToMinutes: 60000) = '1:00');
		assert: ((self track convertMillisecToMinutes: 5165412) = '86:05')
	