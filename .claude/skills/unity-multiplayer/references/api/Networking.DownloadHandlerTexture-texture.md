<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.DownloadHandlerTexture-texture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the downloaded Texture, or `null`. (Read Only)

This property returns a Texture object. If Unity was unable to decode the downloaded data, or has not yet finished decompressing/decoding the downloaded data, this property will return `null`.

If all data has not yet been downloaded, accessing this property will throw an [InvalidOperationException](http://msdn.microsoft.com/en-us/library/system.invalidoperationexception).

*Note:* This property will return a reference to the *same* Texture object on every call. Accessing this property causes no additional memory allocation.
