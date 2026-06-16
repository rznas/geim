<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.GameManagerDependencyInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains dependency information for internal Unity game manager classes. Call ContentBuildInterface.WriteGameManagersSerializedFile or ContentBuildInterface.CalculatePlayerDependenciesForGameManagers to get an instance of this class.

Note: this class and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Properties

| Property | Description |
| --- | --- |
| includedTypes | The project-wide identifiers for the game manager classes referenced in this collection of dependency information. |
| managerObjects | The project-wide identifiers for the game manager classes referenced in this collection of dependency information. |
| referencedObjects | The project-wide identifiers for any objects referenced by the manager classes in the managerObjects list. |
