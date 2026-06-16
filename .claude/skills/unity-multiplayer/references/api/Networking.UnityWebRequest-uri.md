<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-uri.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the target URI for the UnityWebRequest to communicate with.

The passed URI must be a full and absolute URI.

This property can't be set after calling SendWebRequest.

If the UnityWebRequest encounters and follows redirects, this property updates with the URL to which the UnityWebRequest was redirected.

This property works like url but is faster to set because it requires less validation and pre-processing. However, each time you access its value, a new URI instance is created, which is resource-intensive. The recommended best practice is to use this property when you need a URI object and to use url when you need a resulting URL.
