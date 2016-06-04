loadFromMB
loadFrontcoverFromMB

	^ MBRequest getFrontcoverFor: self getMBID size: #big
"	^ self cover ifNil:
		[self cover: (MBRequest getFrontcoverFor: self getMBID size: #big).
		self cover
		]"