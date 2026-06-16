<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/InSceneAssetUtility.CreateInSceneAssetFromAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| asset | The persistent asset to convert to an in-scene asset. |
| gameObjectReferencingAsset | The GameObject that is referencing the asset either directly or through its children in its hierarchy. |

### Returns

**Object** An in-scene asset object referenced by `gameObjectReferencingAsset` if successful, otherwise null.

### Description

Creates an in-scene asset object from the given project asset.

Given a project asset and a GameObject referencing it, the function clones the asset, makes it non-persistent and remaps the GameObject's references to the new in-scene asset object.

Additional resources: InSceneAssetUtility.CreateAssetFromInSceneAsset.
