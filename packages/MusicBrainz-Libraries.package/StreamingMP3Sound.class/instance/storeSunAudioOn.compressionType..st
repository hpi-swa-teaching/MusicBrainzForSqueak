converting
storeSunAudioOn: aBinaryStream compressionType: compressionName
	"Store myself on the given stream as a monophonic sound compressed with the given type of compression. The sampling rate is reduced to 22050 samples/second if it is higher."

	| fmt inBufSize samplesPerFrame codec inBuf compressed outSamplingRate audioWriter samplesRemaining outBuf counts byteCount |
	self pause; reset.  "stop playing and return to beginning"

	fmt := SunAudioFileWriter formatCodeForCompressionType: compressionName.
	inBufSize := 64000.
	samplesPerFrame := 1.
	codec := SunAudioFileWriter codecForFormatCode: fmt.
	codec ifNotNil: [
		samplesPerFrame := codec samplesPerFrame.
		inBufSize := inBufSize roundUpTo: (2 * samplesPerFrame).
		compressed := ByteArray new:
			(inBufSize // samplesPerFrame) * codec bytesPerEncodedFrame].
	inBuf := SoundBuffer newMonoSampleCount: inBufSize.
	outSamplingRate := streamSamplingRate.
	streamSamplingRate > 22050 ifTrue: [
		streamSamplingRate = 44100 ifFalse: [self error: 'unexpected MP3 sampling rate'].
		outSamplingRate := 22050].

	"write audio header"
	audioWriter := SunAudioFileWriter onStream: aBinaryStream.
	audioWriter writeHeaderSamplingRate: outSamplingRate format: fmt.

	"convert and write sound data"
	'Storing audio...' displayProgressAt: Sensor cursorPoint
		from: 0 to: totalSamples during: [:bar |
			samplesRemaining := totalSamples.
			[samplesRemaining > 0] whileTrue: [
				bar value: totalSamples - samplesRemaining.
				samplesRemaining < inBuf monoSampleCount ifTrue: [
					inBuf := SoundBuffer newMonoSampleCount:
						(samplesRemaining roundUpTo: 2 * samplesPerFrame)].
				mpegFile audioReadBuffer: inBuf stream: 0 channel: 0.
				outSamplingRate < streamSamplingRate
					ifTrue: [outBuf := inBuf downSampledLowPassFiltering: true]
					ifFalse: [outBuf := inBuf].
				codec
					ifNil: [audioWriter appendSamples: outBuf]
					ifNotNil: [
						counts := codec
							encodeFrames: (outBuf size // samplesPerFrame)
							from: outBuf at: 1
							into: compressed at: 1.
						byteCount := counts last.
						byteCount = compressed size
							ifTrue: [audioWriter appendBytes: compressed]
							ifFalse: [audioWriter appendBytes: (compressed copyFrom: 1 to: byteCount)]].
				samplesRemaining := samplesRemaining - inBuf monoSampleCount]].

	"update audio header"
	audioWriter updateHeaderDataSize.
