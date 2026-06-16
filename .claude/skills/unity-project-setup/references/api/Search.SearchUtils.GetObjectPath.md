<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchUtils.GetObjectPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | Object to obtain a path from. |

### Returns

**string** Returns the path of an object.

### Description

Get the path of a Unity Object. If it is a GameObject or a Component it is the <see cref="SearchUtils.GetTransformPath(Transform)"/>. Else it is the asset name.
