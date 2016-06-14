video
videoFrames: aStream
	"Total number of frames" 
	^(self primVideoFrames: self fileHandle stream: aStream) asInteger
