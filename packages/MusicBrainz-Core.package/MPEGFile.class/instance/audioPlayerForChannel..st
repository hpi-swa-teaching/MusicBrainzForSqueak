audio
audioPlayerForChannel: channelNumber
	"Answer a streaming sound for playing the audio channel with the given index."
	"Note: The MP3 player can not yet isolate a single channel from a multi-channel audio stream."

	^ StreamingMP3Sound new initMPEGFile: self streamIndex: 0
