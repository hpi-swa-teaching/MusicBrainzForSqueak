as yet unclassified
testEssentialMetadataKeys
	self assert: self track class essentialMetadataKeys 
		equals: #(#Artist #Year #Title #Album)
		description: 'Someone changed the essential metadata keys'