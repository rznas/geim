<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-url.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the target URL for the UnityWebRequest to communicate with.

This property cannot be set after calling SendWebRequest.

If the UnityWebRequest encounters and follows redirects, this property will be updated with the URL to which the UnityWebRequest was redirected.

When inputting URLs, absolute URLs are preferred. However, if you input a partial URL, the system will follow these rules:

**If the input URL starts with two slashes (//)**, then the input is assumed to be a domain and path intended for use over HTTPS.

On non-WebGL platforms, the system will prepend *https:*. On WebGL, the system will inherit the scheme of the path by which the Unity WebGL application is being accessed.

Examples: If the WebGL app is being accessed via https, the system will prepend *https:*. If the WebGL app is being accessed via http, the system will prepend *http:*.

**If the input URL starts with a single slash (/)**, then the system assumes the inout is a path relative to the current domain on which the Unity application is running. On non-WebGL platforms, the system will prepend *https://localhost* to the URL.

On WebGL, the system will prepend the scheme and host of the path by which the Unity WebGL application is being accessed. For example, if the Unity WebGL app is being accessed via *https://unity3d.com/myapp*, then the system will prepend *https://unity3d.com* to relative paths.

**If neither of the above rules apply**, the system validates your input string via the built-in [System.Uri](https://msdn.microsoft.com/en-us/library/system.uri) class. If this class throws a [URIFormatException](https://msdn.microsoft.com/en-us/library/system.uriformatexception), the system attempts to append the input string to the absolute URL by which the Unity app is being accessed. (see above)

Any further exceptions will be re-thrown.
