writing
hasFrameChanged: aTag of: aDictionary
^(aDictionary
					includesKey: (self class textFrames
							at: aTag asSymbol
							ifAbsent: []))