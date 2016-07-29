TESTING: UI elements
testNotifyMainWindowAndDelete 
	| file files |
	files := FileDirectory on: (Smalltalk imagePath), '/albums'.
	files entries do: [ :each | each extension = 'mp3' ifTrue: [file := each]].
	self fileSelectionWindow files: file asOrderedCollection.
	self fileSelectionWindow mainWindow: (MBMainWindow new).
	self fileSelectionWindow notifyMainWindowAndClose. 
	self assert: self fileSelectionWindow mainWindow albums last tracklist first filepath = ((Smalltalk imagePath), '/albums', FileDirectory slash, 'test.mp3').
	self assert: self fileSelectionWindow mainWindow importWindow isNil.
	