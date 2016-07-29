TESTING: accessing
testGetMetadataLabelFor
	| aString |
	aString := 'Title: Musik'.
	self 
		assert: (MBMetadataWindow getMetadataLabelFor: aString)
		equals: 'Title'.