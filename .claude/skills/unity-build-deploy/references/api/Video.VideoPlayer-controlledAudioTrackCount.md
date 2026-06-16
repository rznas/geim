<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-controlledAudioTrackCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Number of audio tracks that this VideoPlayer will take control of.

The other audio tracks will be silent. The maximum allowed number of tracks is defined by VideoPlayer.controlledAudioTrackMaxCount.

The actual number of audio tracks cannot be known in advance when playing URLs, which is why this value is independent of the VideoPlayer.audioTrackCount property.
