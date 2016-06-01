im&ex-porting
toggleImportWindow
	| files |
	self importWindow 
		ifNil: [ self importWindow: MBFileSelectionWindow open.]
		ifNotNil: [ 
				   files := self importWindow model files.
				   self importFiles: files.
				   self importWindow delete.
				   self importWindow: nil.
				   self changed: #albums
				]
	