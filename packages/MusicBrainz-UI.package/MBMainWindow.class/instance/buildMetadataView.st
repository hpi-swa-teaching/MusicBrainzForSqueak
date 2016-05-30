building
buildMetadataView
	| metadataSpec |
	metadataSpec := self builder pluggableListSpec new.
	^ metadataSpec 
		model: self;
		list: #getMetadata;
		frame: (0.65@0.5 corner: 1@1)
		