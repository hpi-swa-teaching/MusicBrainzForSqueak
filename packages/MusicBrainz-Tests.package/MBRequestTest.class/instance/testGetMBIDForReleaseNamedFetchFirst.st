as yet unclassified
testGetMBIDForReleaseNamedFetchFirst

	| result compareValue |
	result := (MBRequest getMBIDForReleaseNamed: 'Devils' FetchFirst: 5) asBag.
	compareValue := Bag newFrom: #('e8bf1e50-63ce-4e70-bee5-f3f8b4a9967c' '69773c97-04a5-42d6-bb0d-a6b752bb5e87' 'f92168f3-d1e9-4961-a9c5-06301ebe8258' '54719bb3-80ae-41f4-94b3-dd619d4e4853' 'd694c126-b1e0-4b75-a548-dfefd465f2e2').
	self
		assert: result
		equals: compareValue
		description: 'Error fetching MBIDs for an album name'
	
	