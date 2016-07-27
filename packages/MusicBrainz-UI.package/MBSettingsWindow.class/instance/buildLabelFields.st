building
buildLabelFields
	| labelSpecs|
	labelSpecs := OrderedCollection new.
	labelSpecs 
		add: self endpointLabelSpec;
		add: self usernameLabelSpec;
		add: self passwordLabelSpec;
		add: self autoloadLabelSpec.
	^ labelSpecs