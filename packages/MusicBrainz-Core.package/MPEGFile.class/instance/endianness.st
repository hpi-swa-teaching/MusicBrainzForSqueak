access
endianness
	^endianness isNil 
		ifTrue: [endianness := SmalltalkImage current endianness] 
		ifFalse: [endianness]