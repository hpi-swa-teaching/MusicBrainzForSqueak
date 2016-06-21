as yet unclassified
testGetFrontcoverFor
	| cover |
	cover := MBRequest getFrontcoverFor: 'Devils'.
	self 
		assert: cover class = Form;
		assert: cover width = 500;
		assert: cover height = 500;
		assert: cover depth = 32
	