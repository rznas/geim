<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/InSceneAssetUtility.CreateAssetFromInSceneAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inSceneAsset | The in-scene asset object to convert to a project asset. |
| filePath | The file path for the new asset. The path is relative to the project folder. |

### Returns

**bool** True if the project asset was created successfully.

### Description

Creates a project asset from the given in-scene asset and saves it at the provided file path.

Any in-scene assets referenced by the provided `inSceneAsset` are saved as sub-objects of the new asset. 

Note that `filePath` is relative to the project folder, for example: "Assets/MyStuff/hello.mat". For more details on `filePath` requirements see AssetDatabase.CreateAsset.

Additional resources: InSceneAssetUtility.CreateInSceneAssetFromAsset.
