accessing
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.	
	windowSpec := self buildWindow.
	windowSpec children 
		add: self buildLabelMetadataList;
		add: self buildLocalMetadataList;
		add: self buildMBMetadataList;
		add: self buildAcceptButton;
		add: self buildCancelButton;
		addAll: self buildHeaderViews.
	self selectedEntity: self mainWindow selectedEntity.
	^ self builder build: windowSpec