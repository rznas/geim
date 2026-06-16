<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightingDataAsset.SetLights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| lights | The array of Lights to overwrite the LightingDataAssets storage with. |

### Description

Overwrites the Lights referenced by a LightingDataAsset.

This method can be used to change per-light data stored in the Lighting Data Asset without having to re-bake the scene. Most of this data exists in Light.bakingOutput.
