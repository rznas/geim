<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SubsystemsImplementation.SubsystemWithProvider.Destroy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Destroys this instance of a subsystem.

Also unloads all resources acquired during the initialization step. Call this when you no longer need this instance of a subsystem.

Note: Once a subsystem is Destroyed, script can still hold a reference but calling a method on it will result in a NullArgumentException.
