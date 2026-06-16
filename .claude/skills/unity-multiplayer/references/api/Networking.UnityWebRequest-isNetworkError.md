<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-isNetworkError.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns `true` after this UnityWebRequest encounters a system error. (Read Only)

Examples of system errors include failure to resolve a DNS entry, a socket error or a redirect limit being exceeded. When this property returns `true`, the error property will contain a human-readable string describing the error.

**Note:** Error-type server return codes, such as 404/Not Found and 500/Internal Server Error, are reflected in the isHttpError property, not the isNetworkError property.

Additional resources: responseCode, isHttpError.
