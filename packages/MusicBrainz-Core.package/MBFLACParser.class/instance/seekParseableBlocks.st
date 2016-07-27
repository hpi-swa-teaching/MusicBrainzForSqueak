parsing
seekParseableBlocks
	| blockInfo length lastBlock |
	lastBlock := false.
	[lastBlock]
		whileFalse: [blockInfo := self stream next.
			length := 0.
			#(16 8 0 )
				do: [:each | length := length + (self stream next << each)].
			 self processBlockOfType: (blockInfo bitAnd: 127) of: length.
			lastBlock := blockInfo allMask: 128]