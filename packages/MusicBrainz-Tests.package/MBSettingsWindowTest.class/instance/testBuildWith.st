as yet unclassified
testBuildWith
	| windowSpec |
	windowSpec := self settingsWindow buildWith: MorphicToolBuilder new.
	self assert: windowSpec class = PluggableSystemWindow