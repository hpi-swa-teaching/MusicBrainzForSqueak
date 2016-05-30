as yet unclassified
getFrontcoverFor: aString size: anotherString

	| resp requestURL stream defaultFile |
	requestURL := MBRequest coverBaseURL, 'release/', aString.
	(anotherString = #small)
	ifTrue: [requestURL :=  requestURL, '/front-250'.
		defaultFile := 'albums/blankCover_250.png']
	ifFalse: [requestURL := requestURL, '/front-500'.
		defaultFile := 'albums/blankCover_500.png'].
"	resp := WebClient httpGet: requestURL."
	resp := (WebClient) new httpGet: requestURL.
	resp isSuccess
		ifFalse: [^ PNGReadWriter formFromFileNamed: (FileDirectory uri: defaultFile) fullName].
	stream := RWBinaryOrTextStream with: resp content.
	^ JPEGReadWriter2 formFromStream: stream