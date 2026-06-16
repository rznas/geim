<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.IMultipartFormSection-contentType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** The value to use in the `Content-Type` header, or `null`.

### Description

Returns the value to use in the `Content-Type` header for this form section.

If this property returns a non-null, non-empty string, then the returned string will be set as the `Content-Type` of this form section.

If this property returns null or an empty string, then the `Content-Type` header will be omitted from this form section. How the server will handle this data is left up to the individual server.
