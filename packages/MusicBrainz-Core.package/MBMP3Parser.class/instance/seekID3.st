parsing
seekID3
	self stream position: (self stream
				positionOfSubCollection: #(73 68 51 )
				ifAbsent: [^ false])
				+ 2.
	^ true