importing
selectImportMethod
	| userImportChoice |
	userImportChoice := (UIManager default chooseFrom: self class availableImportMethods).
	userImportChoice = 0
	ifTrue: [userImportChoice := 1].
	self importMethod: userImportChoice