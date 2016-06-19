baseline
baseline: spec
    <baseline>
	spec
        for: #common
        do: [
            spec
                package: 'MusicBrainz-Core';
		    package: 'MusicBrainz-UI';	
		    package: 'MusicBrainz-Libraries';
                package: 'MusicBrainz-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('MusicBrainz-Core' 'MusicBrainz-UI' 'MusicBrainz-Libraries');
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
