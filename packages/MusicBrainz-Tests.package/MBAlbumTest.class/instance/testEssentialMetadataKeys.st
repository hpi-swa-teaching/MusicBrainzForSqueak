TESTING: accessing
testEssentialMetadataKeys 
	self
		assert: self album class essentialMetadataKeys 
		equals: #(#Artist #Year #Title)