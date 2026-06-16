<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbes.GetInstantiatedLightProbesForScene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| scene | The scene to get the shared light probe data for. |

### Returns

**LightProbes** The cloned light probe data for the scene.

### Description

Gets an instantiated clone of the `LightProbes` object for a specific scene.

If you modify the `LightProbes` object returned by this method, you will only affect the lighting of `scene`. Modifications will not affect assets.

**Note**: This function automatically instantiates the `LightProbes` object and makes it unique to the passed scene. You need to destroy the `LightProbes` object when it's no longer needed. You can also use Resources.UnloadUnusedAssets to destroy a `LightProbes` object, which will be called automatically when you switch to a new scene.

Additional resources: LightProbes.GetSharedLightProbesForScene.
