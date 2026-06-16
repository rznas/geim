<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object.FindObjectsOfTypeIncludingAssets.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of object or asset to find. |

### Returns

**Object[]** The array of objects and assets found matching the type specified.

### Description

Returns a list of all active and inactive loaded objects of Type `type`, including assets.

In addition to all active and inactive Scene objects, this function also returns assets that match the type specified (meshes, textures, prefabs, etc.). This does not return objects that have HideFlags.DontSave set.

Be aware that when running in the editor, this function will also return hidden objects used by Unity itself such as the Scene view camera and preview camera.

Please note that this function is very slow. It is not recommended to use this function every frame. In most cases you can use the singleton pattern instead.
