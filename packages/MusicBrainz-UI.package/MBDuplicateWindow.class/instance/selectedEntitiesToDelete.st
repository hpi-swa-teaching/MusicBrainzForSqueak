accessing
selectedEntitiesToDelete
	^ selectedEntitiesToDelete ifNil: [selectedEntitiesToDelete := Array new: self mainWindow data findDuplicates size withAll: false]