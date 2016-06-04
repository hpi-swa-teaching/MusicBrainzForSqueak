building
importFiles
	self files = #()
		ifFalse: [
			self mainWindow importFiles: self files. 
			self mainWindow importWindow: nil.
			self dependents do: [:each | each delete]
			]
		ifTrue: [
			self inform: 'Please select a folder with mp3-files'
			]