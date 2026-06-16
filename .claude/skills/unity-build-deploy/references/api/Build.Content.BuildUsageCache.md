<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Content.BuildUsageCache.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Caching object for the Scriptable Build Pipeline.

This class helps improve performance when calling the ContentBuildInterface.CalculateBuildUsageTags api multiple times.

Note: this class and its members exist to provide low-level support for the **Scriptable Build Pipeline** package. This is intended for internal use only; use the Scriptable Build Pipeline package to implement a fully featured build pipeline. You can install this via the Unity Package Manager.

### Constructors

| Constructor | Description |
| --- | --- |
| BuildUsageCache | Default contructor. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Dispose the BuildUsageCache destroying all internal state. |
