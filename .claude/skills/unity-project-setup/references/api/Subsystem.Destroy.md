<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Subsystem.Destroy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Destroys this instance of a subsystem.

Also unloads all resources acquired during initialization step. Should be called when this instance of a subsystem is no longer needed.

 Note: Once a Subsystem is Destroyed, script can still hold a reference but calling a method on it will result in a NullArgumentException and output in the console.
