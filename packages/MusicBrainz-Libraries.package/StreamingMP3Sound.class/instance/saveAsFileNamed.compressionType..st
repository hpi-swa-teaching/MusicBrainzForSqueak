converting
saveAsFileNamed: newFileName compressionType: compressionTypeString
	"Store this MP3 sound in a SunAudio file with the given name using the given compression type."

	| outFile |
	outFile := (FileStream newFileNamed: newFileName) binary.
	self storeSunAudioOn: outFile compressionType: compressionTypeString.
	outFile close.
