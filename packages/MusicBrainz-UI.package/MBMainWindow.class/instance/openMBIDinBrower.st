albumTreeView
openMBIDinBrower
	| requestURL |
	(self selectedEntity isNil or: (self selectedEntity mbid = ''))
		ifTrue: [^ self inform: 'Can''t open in Browser.', Character cr, 'No MBID set.'].
	requestURL := 'http://musicbrainz.org/', self selectedEntity class entityName, '/', self selectedEntity getMBID.
	ExternalWebBrowser openOnUrl: requestURL
	