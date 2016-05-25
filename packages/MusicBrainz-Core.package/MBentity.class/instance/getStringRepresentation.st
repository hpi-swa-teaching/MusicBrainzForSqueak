as yet unclassified
getStringRepresentation
	"comment stating purpose of message"

	| instanceVars instanceValues parsed index value|
	
	instanceVars := self class instVarNames.
	
	instanceValues := self instanceVariableValues.
	
	parsed := self class name, ';'.
	
	instanceVars do: [:each |
		index := instanceVars indexOf: each.
		value := instanceValues at: index.
		parsed := parsed, each, ':', value, ';'.].
	
	^ parsed