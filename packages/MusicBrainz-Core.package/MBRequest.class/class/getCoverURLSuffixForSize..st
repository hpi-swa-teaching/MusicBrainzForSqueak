cover
getCoverURLSuffixForSize: anotherString

	anotherString = #small
		ifTrue: [^ '/front-250']
		ifFalse: [^ '/front-500']