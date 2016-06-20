baseline
baseline: spec
    <baseline>
	spec
        for: #common
        do: [
            spec
		    package: 'MusicBrainz-Libraries';
                package: 'MusicBrainz-Core';
		    package: 'MusicBrainz-UI';	
                package: 'MusicBrainz-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('MusicBrainz-Libraries' 'MusicBrainz-Core' 'MusicBrainz-UI');
                group: 'Tests' with: #('MusicBrainz-Tests') ].

	spec project: 'Ston' with: [
		spec
		    className: 'ConfigurationOfSton';
		    versionString: #'stable';
		    repository: 'github://GsDevKit/ston:gemstone/repository' ].
	
	spec project: 'FFI' with: [
		spec
		    className: 'ConfigurationOfFFI';
		    repository: 'http://www.squeaksource.com/MetacelloRepository';
		    loads: #('Core')].
	
	spec project: 'ExternalWebBrowser' with: [
		spec
		    className: 'ConfigurationOfExternalWebBrowser';
		    versionString: #'stable'].
