<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle.LoadAssetWithSubAssets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | Name of the Asset. |
| type | Type to load. |

### Description

Loads Asset and sub Assets from the AssetBundle synchronously.

Load objects from the Asset and its SubAssets. If the signatures that specify the type are called then the requested type is matched against the Main object and Visible objects in each Asset. Otherwise the main objects of each Asset is returned. An example usage is to load all sprites from an sprite that uses "Multiple" for its Sprite Mode.
