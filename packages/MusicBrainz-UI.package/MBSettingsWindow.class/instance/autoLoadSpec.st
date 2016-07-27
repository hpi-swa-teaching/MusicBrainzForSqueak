specs
autoLoadSpec 
	| inputSpec |
	inputSpec := self builder pluggableCheckBoxSpec new.
	^ inputSpec 
		frame: (self class labelWidth@(self class lineHeight * 3) corner: 1@(self class lineHeight * 4));
		model: self;
		label: #labelForAutoload;
		state: #autoloadCheckboxState;
		action: #toggleAutoload