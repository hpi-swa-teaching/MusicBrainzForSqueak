as yet unclassified
openTrackOnSpotify: aMBTrack

	| requestURL requestStr resp reply title artist album found|
	artist := (aMBTrack metadata at: #Artist) encodeForHTTP.
	artist := artist copyReplaceAll: '%00' with: ''.
	album :=  (aMBTrack metadata at: #Album) encodeForHTTP.
	album := album copyReplaceAll: '%00' with: ''.
	title := aMBTrack getTitle encodeForHTTP.
	title := title copyReplaceAll: '%00' with: ''.
	
	requestURL := 'https://api.spotify.com/v1/search?q='.
	requestStr := '"', title,  '" artist:"', artist, '" album:"', album, '"'.
	requestStr :=  requestStr copyReplaceAll: ' ' with: '+'.
	requestStr :=  requestStr copyReplaceAll: '"' with: '%22'.
	requestStr :=  requestStr copyReplaceAll: '%20' with: '+'.
	requestStr :=  requestStr copyReplaceAll: ':' with: '%3A'.
	requestURL := requestURL, requestStr, '&type=track'.
	requestURL := requestURL asString.

	resp :=WebClient new httpGet: requestURL do:[:req|
		req addHeader: 'Accept' value: 'application/json'.
		"req addHeader: 'Authorization' value: 'Bearer BQDqqKDoVMI4mb2Y-01blW1vnZIw-RqCr-6NSax3LpXlLa8doK18wFvfTJXBpyMxAEXt6GUqFj1l4JtUtzvYOcobkXb2QiMD505TvynIucj4pCejLAS42d6UKONmI8-lanpwxM_GXHkbJmJv3xOHBuU27vTAmYPg'"
	].
	reply := resp content asString.
	found := false.
	reply splitBy: (String lf) do: [:line | 
		found
			ifTrue: [
				| spotifyURL |
				spotifyURL := (line splitBy: ( '" : "' )) at: 2.
"				Transcript show: spotifyURL allButLast."
				ExternalWebBrowser openOnUrl: spotifyURL.
				^ self
				].
		(line includesSubString:  '"type" : "track"')
			ifTrue: [found := true]
		].
	MBRequest inform: 'Is not available on spotify!'
