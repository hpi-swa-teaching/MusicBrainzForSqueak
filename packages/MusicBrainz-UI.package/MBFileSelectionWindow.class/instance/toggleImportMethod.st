building
toggleImportMethod
	self selectedDirectory 
		ifNil: [self inform: self class noteNoFolderSelected]
		ifNotNil: 
			[self importMethod: (self importMethod not). 
			self changed: #labelForImportMethodCheckBox]
		