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
		add: self buildSaveButton;
		add: self buildCoverView.
	^ self builder build: windowSpec