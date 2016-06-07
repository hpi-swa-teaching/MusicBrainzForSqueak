building
importFiles
	self files = #()
		ifFalse: [
				self notifyMainWindowAndDelete
			]
		ifTrue: [
			self inform: 'Please select a folder with mp3-files'
			]