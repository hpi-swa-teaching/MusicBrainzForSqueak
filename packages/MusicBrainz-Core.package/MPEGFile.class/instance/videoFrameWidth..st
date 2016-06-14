video
videoFrameWidth: aStream
	"Returns video frame width, -1 if error"
	self hasVideo ifFalse: [^-1].
	^[self primVideoWidth: self fileHandle stream: aStream] on: Error do: [-1]
