metadataView
closeButton
	self player
		ifNotNil: [[self player closeFile] on: Error do: []].
	self importWindow
		ifNotNil: [self importWindow delete].
	self metadataWindow 
		ifNotNil: [self metadataWindow delete]