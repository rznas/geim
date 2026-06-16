<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UploadHandler-contentType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines the default `Content-Type` header which will be transmitted with the outbound HTTP request.

If the parent UnityWebRequest does not have a custom `Content-Type` header set, then the value of this property will be used to determine the value of the `Content-Type` header for the HTTP request.

*Note:* If the parent UnityWebRequest has a custom `Content-Type` header set, then the value of this property is ignored. If this property is `null` or an empty string, and the parent UnityWebRequest has no custom `Content-Type` header, then a default `Content-Type` will be assigned (usually `application/octet-stream`).

*Default value:* `null`.
