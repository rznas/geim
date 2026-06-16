<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle.LoadAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of the Asset. For the most precise matching this should be the relative path of the Asset that was built into the AssetBundle, including the file extension. The relative path and file extension are optional, and Assets can be found and loaded based on the filename alone. However this opens the potential for unexpected results if the filename is not unique within the AssetBundle. At build time it is also possible to specify a name for the Asset using AssetBundleBuild.addressableNames. In that case that specified name will be expected to load the Asset instead of the Asset path. |
| type | The provided type will be checked against the Asset's main object, and if that is not compatible it will be matched against visible objects within the Asset. Not all nested objects are visible, for example this will not work to directly retrieve a Transform, MonoBehaviour or other Component. In cases where there are multiple matches for the name argument, the requested type can determine which Asset to load. |

### Description

Synchronously loads an Asset from the AssetBundle.

The LoadAsset<T> signature is recommended, so that the requested type is explicit and no type casting is necessary. 
 
 When the signature without type is used the main object of the matching Asset is returned. For example when loading a Prefab this will return the root GameObject. 
 
 Note: For Scenes inside AssetBundles call SceneManager.LoadScene instead of this method.
