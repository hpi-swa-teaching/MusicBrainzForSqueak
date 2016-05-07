as yet unclassified
testMusicBrainz
	"comment stating purpose of message"

	| reply resp xmldoc |
	
	resp := WebClient new httpGet: 'http://musicbrainz.org/ws/2/release/?query=Devils' do: [:req | req headerAt: 'User-Agent' put:  'squeakMB / 0.1'.].
	resp isSuccess ifFalse:[^self error: resp status].
	"Process the content from the response"
	reply := resp content.
	xmldoc := XMLDOMParser parseDocumentFrom: reply readStream.
	
	Transcript show: ((xmldoc firstTagNamed: #name) contentString).