building
buildLocalMetadataList 
	| metadataSpec |
	metadataSpec := self builder pluggableListSpec new.
	^ metadataSpec 
		model: self;
		list: #getLocalMetadata;
		frame: (0.3@0.05 corner: 0.65@0.9)
		