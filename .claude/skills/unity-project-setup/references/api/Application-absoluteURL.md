<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-absoluteURL.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The URL of the document. For WebGL, this is a web URL. For Android, iOS, or Universal Windows Platform (UWP) this is a deep link URL (Read Only).

**WebGL**: The URL of the document as shown in a browser's address bar.

**Android:** If the application has been launched or activated using an Intent Filter, a deep link (App Link) URL.

**iOS:** If the application has been launched or activated using a URL Scheme or a Universal Link, a deep link (Universal Link) URL.

**UWP:** If the application has been launched or activated using a custom URI scheme, a deep link URL.

**Note**: If the deep link is activated while the application is running Application.deepLinkActivated delegate is called.
