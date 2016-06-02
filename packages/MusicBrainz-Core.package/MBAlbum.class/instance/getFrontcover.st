loadFromMB
getFrontcover

	^ self cover ifNil:
		[self cover: (MBRequest getFrontcoverFor: self getMBID size: #small).
		self cover
		]