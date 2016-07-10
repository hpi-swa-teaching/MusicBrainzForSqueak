installing
installMusicBrainz
	MBInstaller 
		installExtensions;
		registerInOpenMenu;
		inform: 'MusicBrainz has been installed and added to the Apps-Menu'.
	MBRequest baseURL: 'http://musicbrainz.org/ws/2/'.
	MBMainWindow open