<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Security.PrefetchSocketPolicy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ip | IP address of server. |
| atPort | Port from where socket policy is read. |
| timeout | Time to wait for response. |

### Description

Prefetch the webplayer socket security policy from a non-default port number.

Socket connections attempted in a webplayer need to be validated by a socket policy. When the policy is hosted on a port different than the default port number (843) it needs to be explicitly fetched with this API call before any socket connections are attempted. The timeout argument is in milliseconds.

The return value indicates if a policy was successfully retrieved or not.

Note that web player is not supported from 5.4.0.
