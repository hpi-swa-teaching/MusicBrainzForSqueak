private
createMixer
	"Create a mixed sound consisting of sampled sounds with one sound buffer's worth of samples. The sound has the same sampling rate and number of channels as the MPEG or MP3 file."

	| channels pan snd |
	mpegFile ifNil: [^ self error: 'No MPEG or MP3 file'].
	channels := mpegFile audioChannels: mpegStreamIndex.
	streamSamplingRate := mpegFile audioSampleRate: mpegStreamIndex.
	mixer := MixedSound new.
	1 to: channels do: [:c |
		channels = 1
			ifTrue: [pan := 0.5]
			ifFalse: [pan := (c - 1) asFloat / (channels - 1)].
		snd := SampledSound
			samples: (SoundBuffer newMonoSampleCount: 2)  "buffer size will be adjusted dynamically"
			samplingRate: streamSamplingRate.
		mixer add: snd pan: pan volume: volume].
