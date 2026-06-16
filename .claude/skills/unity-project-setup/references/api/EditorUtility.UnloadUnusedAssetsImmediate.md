<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.UnloadUnusedAssetsImmediate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| includeMonoReferencesAsRoots | When true, this method does not unload assets referenced by script properties and static variables. |

### Description

Unloads assets that are not used.

An asset is deemed to be unused if it isn't reached after walking the whole game object hierarchy, including script components. Static variables are also examined.

Set the `includeMonoReferencesAsRoots` parameter to false to ignore asset references from script properties and static variables. The unloaded assets load again on first use. This parameter is true by default.

This method differs from Resources.UnloadUnusedAssets in that it will wait for asset garbage collection to finish before returning.

Additional resources: Resources.UnloadUnusedAssets.
