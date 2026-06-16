<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Editor.Metadata.AdaptivePerformancePackageMetadataStore.RemoveLoader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| settings | An instance of AdaptivePerformanceManagerSettings to add the loader to. |
| loaderTypeName | The full type name for the loader instance to remove from settings. |
| buildTargetGroup | The build target group being removed from. |

### Returns

**bool** True if removal succeeds, false if not.

### Description

Remove a previously assigned loader from settings. If the loader type is unknown or an instance of the loader can't be found in the project folder, no action is taken.

 Removal will not delete the instance from the project folder.
