building
selectImportMethod
	self importMethod: (UIManager default 
		chooseFrom: (OrderedCollection newFrom: #('just this folder' 'this and all subfolders')))