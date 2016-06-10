building
buildSpotifyButton
	| buttonSpec |
	buttonSpec := self builder pluggableButtonSpec new.
	^ buttonSpec
		model: self;
		frame: (0.8@0.9 corner: 0.9@1);
		label: 'Spotify';
		action: #openOnSpotify
