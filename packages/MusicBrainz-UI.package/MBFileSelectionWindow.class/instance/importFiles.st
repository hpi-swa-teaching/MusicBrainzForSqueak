building
importFiles
	self files size = 0
		ifFalse: [
				self notifyMainWindowAndDelete
			]
		ifTrue: [
			self inform: 'Please select a folder with mp3-files'
			]