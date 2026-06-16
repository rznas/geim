<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest-error.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A human-readable string describing any system errors encountered by this UnityWebRequest object while handling HTTP requests or responses. The default value is `null`. (Read Only)

If the UnityWebRequest has not encountered a system error, this property will return `null`. Examples of system errors include socket errors, errors resolving DNS entries, or the redirect limit being exceeded.

**Note:** If the UnityWebRequest is complete and the response isn't successful, the error property will be non-empty.

 Additional resources: responseCode.
