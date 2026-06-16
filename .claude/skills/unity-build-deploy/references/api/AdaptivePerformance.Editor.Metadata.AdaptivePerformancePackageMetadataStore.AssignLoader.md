<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Editor.Metadata.AdaptivePerformancePackageMetadataStore.AssignLoader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| settings | An instance of AdaptivePerformanceManagerSettings to add the loader to. |
| loaderTypeName | The full type name for the loader instance to assign to settings. |
| buildTargetGroup | The build target group being assigned to. |

### Returns

**bool** True if assignment succeeds, false if not.

### Description

Assigns a loader of type loaderTypeName to the settings instance. Will instantiate an instance if one can't be found in the user's project folder before assigning it.
