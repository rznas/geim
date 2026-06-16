<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings.SetLODSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| lodBias | Global multiplier for the LOD's switching distance. |
| maximumLODLevel | A maximum LOD level. All LOD groups. |
| setDirty | If true, marks all views as dirty. |

### Description

Sets the lodBias and maximumLODLevel at the same time.

If you pass in `true` for the `setDirty` parameter, Unity refreshes all views.

Additional resources: lodBias, maximumLODLevel.
