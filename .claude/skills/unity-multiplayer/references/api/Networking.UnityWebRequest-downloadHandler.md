<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-downloadHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Holds a reference to a DownloadHandler object, which manages body data received from the remote server by this UnityWebRequest.

Setting this property to `null` indicates that this UnityWebRequest does not care about the response’s body data; all received body data will be ignored and discarded. See the reference on DownloadHandler objects for more information on creating and using DownloadHandlers.

This property cannot be changed after calling Send.

*Default value:* `null`.
