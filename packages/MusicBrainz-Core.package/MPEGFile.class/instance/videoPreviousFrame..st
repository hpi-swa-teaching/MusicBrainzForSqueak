video
videoPreviousFrame: aStream
	"Returns 0 if ok"
	self hasVideo ifFalse: [^-1].
	^[self primPreviousFrame: self fileHandle stream: aStream] on: Error do: [-1]
