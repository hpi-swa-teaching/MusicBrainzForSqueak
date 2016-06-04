building
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.	
	
	windowSpec := self buildWindow.
	windowSpec children 
		add: self buildFileTreeView;
		add: self buildFileListView;
		add: self buildImportButton.
	^ self builder build: windowSpec