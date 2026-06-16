<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SubsystemManager-reloadSubsytemsStarted.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called from SubsystemManager before reloading all XR SDK Provider packaged subsystems.

When the Editor starts or when packages are installed or removed, the SubsystemManager searches the packages and loads all XR SDK packages that it finds. Handling this event allows the user to do work they may need prior to the subsystem manager cleaning up any current subsystem descriptors.

Additional resources: SubsystemManager, SubsystemDescriptor.

*Note:* This is deprecated, use beforeReloadSubsystems instead.
