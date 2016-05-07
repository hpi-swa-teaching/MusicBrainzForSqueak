as yet unclassified
getTracklistFromRelease: aString
	"comment stating purpose of message"

	
	| reply resp xmldoc |
	
	resp := WebClient new httpGet: 'http://musicbrainz.org/ws/2/release/', aString, '?inc=recordings' do: [:req | req headerAt: 'User-Agent' put:  'squeakMuB / 0.1'.].
	resp isSuccess ifFalse:[^self error: resp status].
	"Process the content from the response"
	reply := resp content.
	xmldoc := XMLDOMParser parseDocumentFrom: reply readStream.
	
	xmldoc tagsNamed: #recording do: [:each | 
		Transcript show: (each firstTagNamed: #title) contentString.
		Transcript cr].
	^ self