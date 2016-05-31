accessing
path
	| fileDirectory |
	fileDirectory := FileDirectory on: Smalltalk imagePath.
	[fileDirectory createDirectory: 'albums']
	on: Error
	do: [].
	^ fileDirectory on: 'albums'