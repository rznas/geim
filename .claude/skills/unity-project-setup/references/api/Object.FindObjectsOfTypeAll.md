<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object.FindObjectsOfTypeAll.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| type | The type of object to find. |

### Returns

**Object[]** The array of objects found matching the type specified.

### Description

Returns a list of all active and inactive loaded objects of Type `type`.

It will return no assets (meshes, textures, prefabs, etc.).

Be aware that when running in the editor, this function will also return hidden objects used by Unity itself such as the Scene view camera and preview camera.

Please note that this function is very slow. It is not recommended to use this function every frame. In most cases you can use the singleton pattern instead.
