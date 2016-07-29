TESTING: accessing
testPath
	| fileDirectory |
	fileDirectory := MBSTONHandler path.
	self 
		assert: fileDirectory class superclass
		equals: FileDirectory;
		
		assert: fileDirectory fullName
		equals: Smalltalk imagePath, FileDirectory slash, 'albums'