<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Events-registeringPackages.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | A PackageRegistrationEventArgs structure describing the modifications to the registered packages list. |

### Description

Event raised before applying changes to the registered packages list.

Occurs before the asset database begins refreshing. Packages about to be modified or removed are still present and functional, because the package registration process has not yet begun. 
 **Note:** There is no guarantee that the AssetPostprocessor pipeline will finish by the time this event is raised, so don't rely on the execution order for pre-processing events.
