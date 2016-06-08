as yet unclassified
browseFor: aString by: anotherString withMBID: andAnotherString

	| requestURL |
	
	requestURL := MBRequest baseURL, aString, '?', anotherString, '=', andAnotherString.
	^ MBRequest sendRequestTo: requestURL