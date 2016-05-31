building
buildWith: aBuilder 
	| windowSpec build |
	self builder: aBuilder.
	windowSpec := self buildWindow.
	
	windowSpec children 
		add: self buildAlbumTreeView;
		add: self buildMetadataView;
		add: self buildImportedAlbumTreeView;
		add: self buildLoadButton;
		add: self buildSaveButton;
		add: self buildCoverView.
	build := self builder build: windowSpec.
	self coverView: (self builder widgetAt: #coverView).
	^ build