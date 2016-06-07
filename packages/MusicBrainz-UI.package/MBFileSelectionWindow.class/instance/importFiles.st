building
importFiles
	self files = #()
		ifFalse: [
			self selectedDirectory = self shownDirectory
				ifTrue: [
					self notifyMainWindowAndDelete
					]
				ifFalse: [
					self inform: 'You don''t really want to import from this folder!'
					]
			]
		ifTrue: [
			self inform: 'Please select a folder with mp3-files'
			]