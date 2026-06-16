<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SubsystemManager-beforeReloadSubsystems.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called from SubsystemManager before reloading all XR SDK Provider packaged subsystems.

When the Editor starts or when packages are installed or removed, the SubsystemManager searches the packages and loads all XR SDK packages that it finds. Handling this event allows you to do work you might need after the subsystem manager loads and initializes new subsystem descriptors.

Additional resources: SubsystemManager, SubsystemDescriptor.
