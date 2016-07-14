file and directory accessing
isSupported: aFileObject
	^ ((aFileObject extension = 'mp3' or: (aFileObject extension = 'flac')) and: (aFileObject name first ~= $.))