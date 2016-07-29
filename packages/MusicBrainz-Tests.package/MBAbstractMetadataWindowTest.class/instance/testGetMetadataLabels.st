TESTING: accessing
testGetMetadataLabels
	self 
		assert: self abstractMetadataWindow getMetadataLabels
		equals: (OrderedCollection newFrom: #('Language' 'Country' #Artist 'Year' #Media 'Quality' 'Barcode' 'Comment' #Title #Label))
		description: 'Someone changed the available metadata'
	