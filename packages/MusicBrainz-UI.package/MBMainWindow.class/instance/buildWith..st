building
buildWith: aBuilder 
	| windowSpec build headerViews |
	self builder: aBuilder.
	windowSpec := self buildWindow.
	
	windowSpec children 
		add: self buildAlbumTreeView;
		add: self buildMetadataView;
		add: self buildLoadButton;
		add: self buildSaveButton;
		add: self buildImportButton;
		add: self buildCoverView.
	
	headerViews:= self getHeaderViews.
	windowSpec children addAll: headerViews.
	build := self builder build: windowSpec.
	self coverView: (self builder widgetAt: #coverView).
	^ build