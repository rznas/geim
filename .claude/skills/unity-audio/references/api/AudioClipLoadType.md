<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioClipLoadType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines how the audio clip is loaded in.

Determines whether the audio clip will be either loaded in memory in compressed form, such that every playback will decode the data on the fly ("CompressedInMemory"), decompressed at Scene startup such that the clip can be played back at very low CPU usage and the audio data in it can be modified ("DecompressOnLoad"), or streamed directly from the disk which will typically result in the lowest memory usage, as only the data for a short stream buffer needs to be kept in memory ("Streaming").

### Properties

| Property | Description |
| --- | --- |
| DecompressOnLoad | The audio data is decompressed when the audio clip is loaded. |
| CompressedInMemory | The audio data of the clip will be kept in memory in compressed form. |
| Streaming | Streams audio data from disk. |
