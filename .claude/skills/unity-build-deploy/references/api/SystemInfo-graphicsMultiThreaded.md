<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-graphicsMultiThreaded.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Is graphics device using multi-threaded rendering (Read Only)?

On many platforms Unity can use multi-threaded rendering, where actual calls to underlying graphics API are done on a separate thread. Normally you do not have to worry about this, except if you're making native code rendering plugins. In that case, you need to make sure your plugin also does rendering calls on the right thread; use GL.IssuePluginEvent for that.

Additional resources: GL.IssuePluginEvent, Native Plugin Interface.
