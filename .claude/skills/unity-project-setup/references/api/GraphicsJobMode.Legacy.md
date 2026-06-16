<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsJobMode.Legacy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Legacy Graphics Jobs ("Jobified Rendering").

The main thread is responsible for launching and synchronizing the worker threads, and both the main thread and worker threads write Unity graphics commands. The render thread then translates the commands into native graphics commands.
