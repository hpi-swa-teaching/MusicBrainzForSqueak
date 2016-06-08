as yet unclassified
getDetailsForA: aString withMBID: anotherString about: andAnotherString

	| requestURL |
	(andAnotherString isNil)
		ifTrue: [requestURL := MBRequest baseURL, aString, '/', anotherString]
		ifFalse: [requestURL := MBRequest baseURL, aString, '/', anotherString, '?inc=', andAnotherString].
	^ MBRequest sendRequestTo: requestURL