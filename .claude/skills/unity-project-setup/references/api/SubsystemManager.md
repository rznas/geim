<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SubsystemManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gives access to subsystems which provide additional functionality through plugins.

Provides the ability to query for SubsystemDescriptors which enumerate features. Given an SubsystemDescriptor, you can create an Subsystem to utilize the subsystem.

### Static Methods

| Method | Description |
| --- | --- |
| GetAllSubsystemDescriptors | Gets all of the currently known subsystem descriptors regardless of specific subsystem type. |
| GetSubsystemDescriptors | Returns a list of SubsystemDescriptors which describe additional functionality that can be enabled. |
| GetSubsystems | Returns active Subsystems of a specific instance type. |

### Events

| Event | Description |
| --- | --- |
| afterReloadSubsystems | Called from SubsystemManager when it has completed reloading all XR SDK Provider packaged subsystems. |
| beforeReloadSubsystems | Called from SubsystemManager before reloading all XR SDK Provider packaged subsystems. |
| reloadSubsytemsCompleted | Called from SubsystemManager when it has completed reloading all XR SDK Provider packaged subsystems. |
| reloadSubsytemsStarted | Called from SubsystemManager before reloading all XR SDK Provider packaged subsystems. |
