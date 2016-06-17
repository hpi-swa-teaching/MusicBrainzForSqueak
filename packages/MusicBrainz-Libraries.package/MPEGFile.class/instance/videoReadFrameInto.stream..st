video
videoReadFrameInto: aForm stream: aStream
	"Read the next video frame from the given stream into the given 16- or 32-bit Form. The movie frame will be scaled to fit the Form if necessary."

	| colorModel bytesPerRow |
	((aForm depth = 16) | (aForm depth = 32)) ifFalse: [self error: 'must use 16- or 32-bit Form'].
	aForm depth = 16
		ifTrue: [
			colorModel := self endianness = #big ifTrue: [14] ifFalse: [16].
			bytesPerRow := 2 * (aForm width roundUpTo: 2)]
		ifFalse: [
			colorModel := self endianness = #big ifTrue: [13] ifFalse: [1].
			bytesPerRow := 4 * aForm width].
 	^ self
		videoReadNextFrameInto: aForm bits
		x: 0 y: 0
		width: (self videoFrameWidth: aStream)
		height: (self videoFrameHeight: aStream)
		outWidth: aForm width
		outHeight: aForm height
		colorModel: colorModel
		stream: aStream
		bytesPerRow: bytesPerRow
