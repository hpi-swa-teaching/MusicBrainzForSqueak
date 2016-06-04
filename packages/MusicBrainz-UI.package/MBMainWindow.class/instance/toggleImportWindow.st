im&ex-porting
toggleImportWindow
	self importWindow 
		ifNil: [ self importWindow: (MBFileSelectionWindow openFrom: self)]