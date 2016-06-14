video
videoDropFrames: aNumberOfFrames stream: aStream
	"Returns -1 if setFrame failed"
	self hasVideo ifFalse: [^-1].
	^[self primDropFrame: self fileHandle frame: aNumberOfFrames stream: aStream] on: Error do: [-1]
