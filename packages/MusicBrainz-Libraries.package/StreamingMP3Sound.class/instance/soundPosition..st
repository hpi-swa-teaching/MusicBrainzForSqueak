accessing
soundPosition: fraction
	"Jump to the position the given fraction through the sound file. The argument is a number between 0.0 and 1.0."

	| sampleIndex |
	self mpegFileIsOpen ifFalse: [^ self].
	mpegFile hasAudio ifTrue: [
		sampleIndex := ((totalSamples * fraction) truncated max: 0) min: totalSamples.
		mpegFile audioSetSample: 0 stream: 0.  "work around for library bug: first seek to zero"
		mpegFile audioSetSample: sampleIndex stream: 0].
