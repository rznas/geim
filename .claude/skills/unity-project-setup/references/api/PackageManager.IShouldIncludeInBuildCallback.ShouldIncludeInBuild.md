<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.IShouldIncludeInBuildCallback.ShouldIncludeInBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | The absolute path of the managed plugin to include or exclude. |

### Returns

**bool** Returns **true** to include the plugin identified by `path` in the build; otherwise, returns **false**.

### Description

Determines whether to include a managed plugin in a build.

Predicate invoked during a build to determine whether to include a managed plugin (DLL) in the associated package.
