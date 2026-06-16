<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.SetRequestHeader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The key of the header to be set. Case-sensitive. |
| value | The header's intended value. |

### Description

Set a HTTP request header to a custom value.

Header keys and values must be valid according to HTTP protocol specification. Neither string may contain certain illegal characters, such as control characters. Both strings must be non-null and contain a minimum of 1 character. For more information, see [HTTP specifications](https://www.w3.org/Protocols/).

This method can't be called after SendWebRequest is called.

It is not recommended to set these headers to these custom values: `Accept-Charset`, `Accept-Encoding`, `Access-Control-Request-Headers`, `Access-Control-Request-Method`, `Connection`, `Date`, `Dnt`, `Expect`, `Host`, `Keep-Alive`, `Origin`, `Referer`, `Te`, `Trailer`, `Transfer-Encoding`, `Upgrade`, `Via`. Due to different limitations across platforms, the custom value might be overridden, ignored, or unsupported, therefore the resulting behavior is unreliable. It is strongly recommended to leave these headers for automatic handling unless you want to risk viewing any unexpected results.

The `Accept-Encoding` header is automatically set to supported encodings. Use of a different value is ignored or might cause request to fail. For more information, refer to the [Mozilla docs](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-Encoding) on Accept-Encoding.

The `Content-Length` header is automatically populated based on the contents of the attached DownloadHandler if any, and can't be set to a custom value.

The `X-Unity-Version` header is automatically set by Unity and might not be set to a custom value.

The `User-Agent` header is automatically set by Unity and it's not recommended to set it to a custom value.

The `Cookie` and `Cookie2` headers are automatically managed by the underlying cookie engine. While the exact behavior is dependant on the platform used, typically, setting cookies via this header appends them to those set by engine. Additional resources: ClearCookieCache.

In addition, the following headers are filled by the Web browser on the **Web** platform, and therefore might not have any custom values set: `Cookie`, `Cookie2`, `User-Agent`.
