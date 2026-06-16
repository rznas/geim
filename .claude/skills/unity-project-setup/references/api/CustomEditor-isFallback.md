<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CustomEditor-isFallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If true, match this editor only if all non-fallback editors do not match. Defaults to false.

Unity does a two-pass match to hook up editors with inspected types. First the non-fallback editors are tested, and if none match, then the fallbacks are tested for a match. Setting this flag lets you set up a default editor for a given type, while still permitting another editor type to override it.
