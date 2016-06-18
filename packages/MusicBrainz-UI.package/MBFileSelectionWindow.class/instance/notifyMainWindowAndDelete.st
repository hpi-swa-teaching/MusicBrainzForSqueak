importing
notifyMainWindowAndDelete 
	self mainWindow 
		importFiles: self files;
		importWindow: nil.
	self morph delete