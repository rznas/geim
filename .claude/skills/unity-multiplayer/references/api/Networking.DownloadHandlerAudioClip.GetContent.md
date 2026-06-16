<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerAudioClip.GetContent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| www | A finished UnityWebRequest object with DownloadHandlerAudioClip attached. |

### Returns

**AudioClip** The same as DownloadHandlerAudioClip.audioClip

### Description

Returns the downloaded AudioClip, or `null`.

A static function provided for convenience; equivalent to ((DownloadHandlerAudioClip)www.downloadHandler).audioClip.
