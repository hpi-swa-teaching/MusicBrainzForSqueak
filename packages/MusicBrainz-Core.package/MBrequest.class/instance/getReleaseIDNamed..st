as yet unclassified
getReleaseIDNamed: aString

	| reply resp xmldoc |
	
	resp := WebClient new httpGet: 'http://musicbrainz.org/ws/2/release/?query=', aString do: [:req | req headerAt: 'User-Agent' put:  'squeakMuB / 0.1'.].
	resp isSuccess ifFalse:[^self error: resp status].
	"Process the content from the response"
	reply := resp content.
	xmldoc := XMLDOMParser parseDocumentFrom: reply readStream.
	Transcript show: (xmldoc firstTagNamed: #title) contentString.
	Transcript cr.
	self getTracklistFromRelease: ((xmldoc firstTagNamed: #release) attributeAt: 'id')