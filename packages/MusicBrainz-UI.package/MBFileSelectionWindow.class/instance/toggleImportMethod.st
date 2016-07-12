building
toggleImportMethod
	self selectedDirectory 
		ifNil: [self inform: self class noteNoFolderSelected]
		ifNotNil: 
			[self importRecursively: (self importRecursively not). 
			self changed: #labelForImportMethodCheckBox]
		