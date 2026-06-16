<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerAudioClip-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| url | The nominal (pre-redirect) URL at which the audio clip is located. |
| audioType | Value to set for AudioClip type. |
| uri | A System.Uri object identifying the audio clip resource. |

### Description

Constructor, specifies what kind of audio data is going to be downloaded.

The value in `audioType` will be used to parameterize the AudioClip when importing the downloaded audio data.
