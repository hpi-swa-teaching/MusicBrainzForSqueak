building
buildInputFields
	| inputSpecs |
	inputSpecs := OrderedCollection new.
	inputSpecs 
		add: self endPointSpec;
		add: self usernameSpec;
		add: self passwordSpec;
		add: self autoLoadSpec.
	^ inputSpecs