<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.CanCacheInspectorGUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| property | The SerializedProperty in question. |

### Returns

**bool** Whether the property's inspector GUI can be cached.

### Description

Get whether a SerializedProperty's inspector GUI can be cached.

For builtin EditorGUI controls, this is always true. If the property has a custom PropertyDrawer, the function will return the cacheability value returned by that drawer.
