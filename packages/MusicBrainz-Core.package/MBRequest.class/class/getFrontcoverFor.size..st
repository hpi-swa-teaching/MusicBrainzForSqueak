cover
getFrontcoverFor: aString size: anotherString

	| resp requestURL stream |
	requestURL := MBRequest coverBaseURL, 'release/', aString.
	anotherString = #small
		ifTrue: [requestURL := requestURL , '/front-250']
		ifFalse: [requestURL := requestURL , '/front-500'].
	resp := (WebClient) new httpGet: requestURL.
	resp isSuccess
		ifFalse: [^ MBRequest defaultCoverSized: anotherString].
	stream := RWBinaryOrTextStream with: resp content.
	^ JPEGReadWriter2 formFromStream: stream