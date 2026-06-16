<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsJobMode.Split.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Split Graphics Jobs.

The work is divided. The main thread writes Unity graphics commands and launches worker threads to handle them. The render thread, rather than directly processing these commands, starts its own set of worker threads to read and convert the Unity commands into native graphics commands.
