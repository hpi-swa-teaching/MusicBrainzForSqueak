file and directory accessing
isNotFiltered: aFileObject
	^ ((aFileObject extension = 'mp3' or: (aFileObject extension = 'flac')) and: (aFileObject name first ~= $.))