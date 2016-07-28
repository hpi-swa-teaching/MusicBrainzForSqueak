parsing
parseBlocks
	| blockInfo length |
	[blockInfo := self stream next.
	length := self stream next << 16.
	length := length + self stream next << 8.
	length := length + self stream next.
	self processBlockOf: (self parseType: blockInfo) with: length.
	(self isLastBlock: blockInfo)
		ifTrue: [^ true]] repeat "rekursion"