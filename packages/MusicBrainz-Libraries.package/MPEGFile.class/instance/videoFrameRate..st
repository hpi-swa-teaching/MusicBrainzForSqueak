video
videoFrameRate: aStream
	"Returns video frame rate (float), -1 if error"
	self hasVideo ifFalse: [^-1].
	^[self primFrameRate: self fileHandle stream: aStream] on: Error do: [-1]
