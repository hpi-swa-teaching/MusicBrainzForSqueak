as yet unclassified
getTracklistFromRelease: aString
	"comment stating purpose of message"

	
	| reply resp xmldoc |
	
	"resp := WebClient new httpGet: 'http://musicbrainz.org/ws/2/release/', aString, '?inc=recordings' do: [:req | req headerAt: 'User-Agent' put:  'squeakMB/0.1 '.]."
	resp := WebClient httpGet: 'http://mb.mvoelker.me/ws/2/release/', aString, '?inc=recordings'.
	
	"http://musicbrainz.org/ws/2/recording?release=61bf0388-b8a9-48f4-81d1-7eb02706dfb0"
	
	resp isSuccess ifFalse:[^self error: resp status].
	"Process the content from the response"
	reply := resp content.
	xmldoc := XMLDOMParser parseDocumentFrom: reply readStream.
	
	xmldoc tagsNamed: #recording do: [:each | 
		Transcript show: (each firstTagNamed: #title) contentString.
		Transcript cr].
	^ self