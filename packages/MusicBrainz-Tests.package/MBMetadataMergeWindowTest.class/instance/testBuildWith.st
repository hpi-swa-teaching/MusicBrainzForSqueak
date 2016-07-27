as yet unclassified
testBuildWith
	| window |
	window := self metadataMergeWindow buildWith: MorphicToolBuilder new.
	self assert: window class = PluggableSystemWindow