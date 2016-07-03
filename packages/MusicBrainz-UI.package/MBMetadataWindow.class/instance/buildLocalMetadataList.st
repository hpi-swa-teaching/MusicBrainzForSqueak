building
buildLocalMetadataList 
	| metadataSpec |
	metadataSpec := self builder pluggableListSpec new.
	^ metadataSpec 
		model: self;
		list: #getMetadataLabels;
		getSelected: #selectedMetadata;
		setSelected: #selectedMetadata:;
		frame: (0@0.1 corner: 1@0.9)
		