as yet unclassified
setUp
	| window |
	super setUp.
	window := MBFileSelectionWindow new.
	self fileSelectionWindow: window