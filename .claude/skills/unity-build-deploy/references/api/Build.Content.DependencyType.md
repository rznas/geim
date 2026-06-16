<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.DependencyType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Dependency calculation flags to control what is returned, and how it operates.

### Properties

| Property | Description |
| --- | --- |
| RecursiveOperation | Depencency calculation is recursive. For each new valid reference discovered during calculation, the dependencies of those references will also be included in the returned results. |
| MissingReferences | Object dependencies returned for only missing references. |
| ValidReferences | Depencency calculation is not recursive. Only dependencies of the initial passed in set will be returned. |
| DefaultDependencies | Default mode. Dependencies are calculated recursively, and only valid references are returned. |
