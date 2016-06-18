request
sendQuery: aString forEntity: anotherString

	| requestURL |
	
	requestURL := MBRequest baseURL, anotherString, '/?query=', (aString encodeForHTTP).
	^ MBRequest sendRequestTo: requestURL