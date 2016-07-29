as yet unclassified
testOpenFrom
	| window |
	window := MBDuplicateWindow openFrom: (MBMainWindow new).
	self assert: window class = PluggableSystemWindow.
	window delete
	