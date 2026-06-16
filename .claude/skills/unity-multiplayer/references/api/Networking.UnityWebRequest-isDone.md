<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-isDone.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns `true` after the UnityWebRequest has finished communicating with the remote server. (Read Only)

This property will return `true` both when the UnityWebRequest finishes successfully, or when it encounters a system error. All post-download processing by the DownloadHandler (if any) will be completed before this property returns `true`.

Additional resources: isNetworkError, isHttpError.
