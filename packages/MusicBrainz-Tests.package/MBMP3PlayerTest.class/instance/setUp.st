as yet unclassified
setUp
	super setUp.
	self player: (MBMP3Player onFileNamed: (Smalltalk imagePath), '/albums/test.mp3')
"	self player: (MBMP3Player onFileNamed: 'C:\Users\Tom\Documents\SWT\SWT2016.app\Contents\Resources/albums/test.mp3')"