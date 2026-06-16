<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.UpdateGlobalShaderProperties.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| time | Time to use. -1 to disable. |

### Description

Updates the global shader properties to use when rendering.

If the Editor is not in Play Mode, Graphics.Blit will not normally take time into consideration. Setting the internal time and updating the global shader properties before doing a Blit will use the custom time value when performing the Blit operation.

Additional resources: EditorUtility.SetCameraAnimateMaterialsTime EditorUtility.SetCameraAnimateMaterials.
