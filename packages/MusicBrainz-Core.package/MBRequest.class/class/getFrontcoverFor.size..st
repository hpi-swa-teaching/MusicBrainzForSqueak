cover
getFrontcoverFor: aString size: anotherString
	| resp requestURL stream |
	requestURL := MBRequest coverBaseURL, 'release/', aString, (MBRequest getCoverURLSuffixForSize: anotherString).
	resp := WebClient new httpGet: requestURL.
	resp isSuccess ifFalse: [^ MBRequest defaultCoverSized: anotherString].
	stream := RWBinaryOrTextStream with: resp content.
	^ JPEGReadWriter2 formFromStream: stream