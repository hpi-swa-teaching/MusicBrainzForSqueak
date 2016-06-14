video
videoFrameHeight: aStream
	"Returns video frame height, -1 if error "
	self hasVideo ifFalse: [^-1].
	^[self primVideoHeight: self fileHandle stream: aStream] on: Error do: [-1]
