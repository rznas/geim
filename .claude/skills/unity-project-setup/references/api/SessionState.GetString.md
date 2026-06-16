<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SessionState.GetString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Retrieve a String value.

Due to the behavior of Unity's serialization system, `SessionState.GetString` returns an empty string instead of `null` when no string value is stored for the key, even if you specify `null` as the `defaultValue`.
