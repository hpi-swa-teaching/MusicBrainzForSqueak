installing
installExternalWebBrowser
	Metacello new
		configuration: 'FFI';
		version: #stable;
		load.
	Metacello new
		configuration: 'ExternalWebBrowser';
		version: #stable;
		load