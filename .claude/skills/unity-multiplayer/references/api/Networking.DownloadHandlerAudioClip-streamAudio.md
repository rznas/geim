<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerAudioClip-streamAudio.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Create streaming AudioClip.

Creates an AudioClip that can begin playback without needing the whole file to be downloaded. After starting the download, you must perform checks to determine that enough of your file has downloaded before attempting playback. To do this, poll UnityWebRequest.downloadedBytes to calculate an average download speed. Only begin playback after your checks confirm that the remainder of the file will finish downloading before the playback of your AudioClip finishes.

*Note:* When streamAudio is true, it supersedes compression, and the download handler creates an AudioClip similar to an imported clip with the loadType AudioClipLoadType.Streaming.
