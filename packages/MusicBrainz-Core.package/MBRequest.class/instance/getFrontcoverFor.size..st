as yet unclassified
getFrontcoverFor: aString size: anotherString

	| resp requestURL stream |
	requestURL := MBRequest coverBaseURL, 'release/', aString.
	(anotherString = #small)
	ifTrue: [requestURL :=  requestURL, '/front-250']
	ifFalse: [requestURL := requestURL, '/front-500'].
"	resp := WebClient httpGet: requestURL."
	resp := (WebClient) new httpGet: requestURL.
	resp isSuccess
		ifFalse: [self inform: 'no cover found!'.
			^ PNGReadWriter formFromFileNamed: (FileDirectory uri: 'albums/blankCover.png') fullName.
		].
	stream := RWBinaryOrTextStream with: resp content.
	^ JPEGReadWriter2 formFromStream: stream