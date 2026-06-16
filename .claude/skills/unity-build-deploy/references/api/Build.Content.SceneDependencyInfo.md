<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.SceneDependencyInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Scene dependency information generated from the ContentBuildInterface.CalculatePlayerDependenciesForScene API.

Note: this class and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Properties

| Property | Description |
| --- | --- |
| globalUsage | Lighting information used by the Scene. |
| includedTypes | Types that are used by scene objects. |
| referencedObjects | List of objects referenced by the Scene. |
| scene | Scene's original asset path. |
