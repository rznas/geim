<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbes.GetSharedLightProbesForScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scene | The scene to get the shared light probe data for. |

### Returns

**LightProbes** The shared light probe data for the scene.

### Description

Gets the shared `LightProbes` object for a specific scene.

Unless you need to modify an asset, it's not recommended to modify a `LightProbes` object returned by this method. You may affect all currently loaded versions of the scene, or change the light probe data stored in Lighting Data assets. Use LightProbes.GetInstantiatedLightProbesForScene instead.

Additional resources: LightProbes.GetInstantiatedLightProbesForScene.
