video
videoSetFrame: aFrameNumber stream: aStream
	"Returns -1 if setFrame failed"
	self hasVideo ifFalse: [^-1].
	^[self primSetFrame: self fileHandle frame: aFrameNumber asFloat stream: aStream] on: Error do: [-1]
