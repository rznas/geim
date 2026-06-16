<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-httpForcedVersion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Force the version of HTTP used when making web requests with UnityWebRequest.

Setting this property to `HttpForcedVersion.NotForced` causes UnityWebRequest to use standard negotiation with the server to determine which HTTP version to use.

Using other values causes UnityWebRequest to force the web requests to a particular version of HTTP even if insecure HTTP is being used.

*Default value:* `HttpForcedVersion.NotForced`.

Refer to HttpForcedVersion for more information.

```csharp
using UnityEngine.Networking;
public class HttpForcedVersionExample
{
    public static UnityEngine.Networking.UnityWebRequest MakeUnityWebRequestWithForcedHttp2()
    {
        var httpHandler = new UnityEngine.Networking.UnityWebRequest()
        {
            httpForcedVersion = HttpForcedVersion.HTTP2
        };
        return httpHandler;
    }
}
```

Demonstrating how to force web requests to HTTP/2 using `UnityWebRequest`.
