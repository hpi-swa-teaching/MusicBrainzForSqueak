video
videoReadNextFrameInto: aFormBuffer x: x y: y width: width height: height outWidth: aTargetWidth outHeight: aTargetHeight colorModel: colorModel stream: aStream bytesPerRow: aByteCount
	"return nonZero if failure "

	self hasVideo ifFalse: [^-1].
	^[self primVideoReadNextFrameFor: self fileHandle into: aFormBuffer x: x y: y width: width height: height outWidth: aTargetWidth outHeight: aTargetHeight colorModel: colorModel stream: aStream bytesPerRow: aByteCount] on: Error do: [-1]

"/* Supported color models for mpeg3:=read:=frame */
#define MPEG3:=RGB565 2
#define MPEG3:=RGB555 14  //JMM for mac
#define MPEG3:=RGBI555 16  //SVP for intel
#define MPEG3:=BGR888 0
#define MPEG3:=BGRA8888 1
#define MPEG3:=RGB888 3
#define MPEG3:=RGBA8888 4  
#define MPEG3:=ARGB8888 13  //JMM for mac
#define MPEG3:=RGBA16161616 5

/* Color models for the 601 to RGB conversion */
/* 601 not implemented for scalar code */
#define MPEG3:=601:=RGB565 11
#define MPEG3:=601:=RGB555 15 //JMM for Squeak
#define MPEG3:=601:=RGBI555 17 //SVP for intel
#define MPEG3:=601:=BGR888 7
#define MPEG3:=601:=BGRA8888 8
#define MPEG3:=601:=RGB888 9
#define MPEG3:=601:=RGBA8888 10
#define MPEG3:=601:=ARGB8888 12 //JMM for Squeak
"