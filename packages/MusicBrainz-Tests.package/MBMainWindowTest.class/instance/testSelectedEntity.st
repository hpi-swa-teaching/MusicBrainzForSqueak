TESTING: accessing
testSelectedEntity
	self mainWindow 
		selectedEntity: MBMockData mockAlbum;
		selectedMetadata: 'Label: ';
		selectedEntity: MBMockData mockAlbum.
	self assert: self mainWindow selectedMetadata isNil