accessing
currentDirectory: anObject
	currentDirectory := FileDirectory on: anObject.
	entries := currentDirectory entries.