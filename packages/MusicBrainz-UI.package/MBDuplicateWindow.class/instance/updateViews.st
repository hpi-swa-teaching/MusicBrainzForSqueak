deleting
updateViews  
	self duplicates: nil. 
	self changed: #duplicates. 
	self selectedEntitiesToDelete: (Array new: (self duplicates size) withAll: false). 
	self mainWindow changed: #albums