<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.Allocator.Persistent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use a persistent allocation.

The slowest allocation but can last as long as you need it to, and if necessary, throughout the application's lifetime. It's a wrapper for a direct call to malloc. Longer jobs can use this NativeContainer allocation type. Don't use Persistent where performance is essential.
