<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/InSceneAssetUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides methods related to in-scene assets.

In-scene assets are scene objects that are referenced by one or more objects in a scene and are of an asset type. Examples of asset types include, but are not limited to, Mesh, Material, and ScriptableObject. If in-scene assets are not converted to project assets (with AssetDatabase.CreateAsset, for example), they are serialized inside scene files. This can cause unwanted increases in the scene file size. `InSceneAssetUtility` provides methods to identify and manage such objects.

### Static Methods

| Method | Description |
| --- | --- |
| CollectInSceneAssets | Gets information about in-scene assets referenced by the given GameObjects or scene. |
| CreateAssetFromInSceneAsset | Creates a project asset from the given in-scene asset and saves it at the provided file path. |
| CreateInSceneAssetFromAsset | Creates an in-scene asset object from the given project asset. |
| IsInSceneAsset | Checks if the given object is an in-scene asset. |
