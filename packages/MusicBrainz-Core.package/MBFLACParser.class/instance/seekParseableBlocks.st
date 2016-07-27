parsing
seekParseableBlocks
	| blockinfo length lastBlock |
	lastBlock := false.
	[lastBlock]
		whileFalse: [blockinfo := self stream next.
			length := 0.
			#(16 8 0 )
				do: [:each | length := length + (self stream next << each)].
			 self processBlockOfType: (blockinfo bitAnd: 127) of: length.
			lastBlock := blockinfo allMask: 128]