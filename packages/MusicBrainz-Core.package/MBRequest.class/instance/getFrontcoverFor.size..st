as yet unclassified
getFrontcoverFor: aString size: anotherString

	| resp requestURL stream |
	(anotherString = #small)
	ifTrue: [requestURL := MBRequest coverBaseURL, 'release/', aString, '/front-250']
	ifFalse: [requestURL := MBRequest coverBaseURL, 'release/', aString, '/front-500'].
"	resp := WebClient httpGet: requestURL."
	resp := (WebClient) new httpGet: requestURL.
	resp isSuccess
		ifFalse: [self inform: 'no cover found!'.
			^ PNGReadWriter formFromFileNamed: (FileDirectory uri: 'albums/blankCover.png') fullName.
		].
	stream := RWBinaryOrTextStream with: resp content.
	^ JPEGReadWriter2 formFromStream: stream