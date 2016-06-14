registry
registry
	^Registry isNil
		ifTrue:[Registry := WeakRegistry new]
		ifFalse:[Registry].