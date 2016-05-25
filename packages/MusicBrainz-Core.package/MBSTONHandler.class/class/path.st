accessing
path
	| fileDirectory |
	fileDirectory := FileDirectory on: Smalltalk imagePath.
	SwaLint try: [ fileDirectory createDirectory: 'albums'] catch:[].
	^ fileDirectory on: 'albums'.