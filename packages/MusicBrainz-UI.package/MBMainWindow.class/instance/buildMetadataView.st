building
buildMetadataView
	| metadataSpec |
	metadataSpec := self builder pluggableListSpec new.
	^ metadataSpec 
		model: self;
		list: #getMetadata;
		getSelected: #selectedMetadata;
		setSelected: #selectedMetadata:;
		frame: (0.65@0.60 corner: 1@0.95)
		