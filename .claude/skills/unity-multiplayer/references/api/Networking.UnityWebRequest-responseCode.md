<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-responseCode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The numeric HTTP response code returned by the server, such as `200`, `404` or `500`. (Read Only)

If the UnityWebRequest has received multiple responses (due to redirects), then this property will return the response code of the newest (or final) HTTP response.

If the UnityWebRequest has not yet processed a response, this property will return -1.
