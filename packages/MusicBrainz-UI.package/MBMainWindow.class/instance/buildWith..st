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
		add: self buildEditMetadataButton;
		add: self buildCoverView;
		add: self buildMetadataButton.
	
	headerViews := self buildHeaderViews.
	windowSpec children addAll: headerViews.
	build := self builder build: windowSpec.
"	Transcript show: (build submorphs findByClass: PluggableButtonMorphPlus"
	self coverView: (self builder widgetAt: #coverView).
	^ build