baseline
baseline: spec
    <baseline>
    spec
        for: #common
        do: [ 
            spec
                package: 'MusicBrainz';
                package: 'MusicBrainzTests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('MusicBrainz');
                group: 'Tests' with: #('MusicBrainzTests') ]