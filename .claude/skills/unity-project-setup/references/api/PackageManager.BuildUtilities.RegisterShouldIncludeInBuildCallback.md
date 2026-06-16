<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.BuildUtilities.RegisterShouldIncludeInBuildCallback.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| cb | Object of a class that implements the IShouldIncludeInBuildCallback interface. |

### Description

Registers a callback object for a package.

During a build operation, the Unity Package Manager invokes the IShouldIncludeInBuildCallback.ShouldIncludeInBuild method for each managed plugin (DLL) in the package whose name is IShouldIncludeInBuildCallback.PackageName. The callback implementation must return **true** for plugins that should be included in the build and **false** for plugins that should be excluded from the build.

 Only one IShouldIncludeInBuildCallback callback object can be registered per package.
