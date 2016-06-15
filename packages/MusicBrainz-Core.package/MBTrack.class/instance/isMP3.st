accessing
isMP3
	| path collection |
	path := self filepath asString.
	collection := path splitBy: '.'.
	^ (collection last = 'mp3')