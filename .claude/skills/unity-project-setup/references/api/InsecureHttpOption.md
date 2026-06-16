<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/InsecureHttpOption.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Options for allowing plain text HTTP connections for UnityWebRequest.

Plain text HTTP connections are not secure, and can make your application vulnerable to security threats. By default, UnityWebRequest uses secure HTTPS connections instead.

Use this enum to configure when UnityWebRequest is allowed to use HTTP plain text connections.

### Properties

| Property | Description |
| --- | --- |
| NotAllowed | Do not allow UnityWebRequest to use plain text HTTP connections. |
| DevelopmentOnly | Allow UnityWebRequest to use plain text HTTP connections in development builds only. |
| AlwaysAllowed | Allow UnityWebRequest to use plain text HTTP connections at all times. |
