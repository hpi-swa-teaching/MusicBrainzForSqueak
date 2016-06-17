accessing
soundPosition
	"Answer the relative position of sound playback as a number between 0.0 and 1.0."

	self mpegFileIsOpen ifFalse: [^ 0.0].
	mpegFile hasAudio ifFalse: [^ 0.0].
	^ (mpegFile audioGetSample: 0) asFloat / totalSamples
