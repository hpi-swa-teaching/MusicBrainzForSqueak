building
openMBIDinBrower
	| requestURL |
	
	self selectedEntity = nil
		ifTrue: [^ self].
	requestURL := 'http://musicbrainz.org/', self selectedEntity class entityName, '/', self selectedEntity getMBID.
	ExternalWebBrowser openOnUrl: requestURL 
	