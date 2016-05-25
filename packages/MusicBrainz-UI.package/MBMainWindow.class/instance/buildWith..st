building
buildWith: aBuilder 
	| windowSpec |
	self builder: aBuilder.
	windowSpec := self buildWindow.
	
	windowSpec children 
		add: self buildAlbumTreeView;
		add: self buildMetadataView;
		add: self buildImportedAlbumTreeView;
		add: self buildLoadButton;
		add: self buildSaveButton.
	^ self builder build: windowSpec