<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/InSceneAssetUtility.CollectInSceneAssets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObjects | The GameObjects to traverse and collect in-scene asset references for. |
| scene | The scene to traverse and collect in-scene asset references for. |

### Returns

**InSceneAssetInformation[]** Information about the in-scene assets referenced by the provided GameObjects or the GameObjects of the provided scene.

### Description

Gets information about in-scene assets referenced by the given GameObjects or scene.

Checks the entire hierarchy of each provided GameObject or GameObjects of the provided scene, their respective child GameObjects, and components to collect all in-scene assets referenced by them.

Additional resources: InSceneAssetInformation.
