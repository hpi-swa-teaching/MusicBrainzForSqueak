installing
installSTON
	Metacello new
		configuration: 'Ston';
		version: #stable;
		repository: 'github://GsDevKit/ston:gemstone/repository';
		load