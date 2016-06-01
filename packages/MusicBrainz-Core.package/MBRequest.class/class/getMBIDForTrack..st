as yet unclassified
getMBIDForTrack: aMBTrack

	| response requestURL|
	requestURL := MBRequest baseURL, 'recording/?query='.
	aMBTrack tags keysAndValuesDo: [:key :value |
		requestURL := requestURL, MBRequest MBTrackSearchFields at: key, '=', value, '+'].
	requestURL := requestURL copyFrom: 1 to: requestURL size - 1.
	Transcript show: requestURL.
	response := ''.
"	response := WebClient httpGet: requestURL."