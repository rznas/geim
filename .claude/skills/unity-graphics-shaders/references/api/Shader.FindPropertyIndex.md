<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.FindPropertyIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| propertyName | The name of the shader property. |

### Description

Finds the index of a shader property by its name.

You can use the index with functions such as GetPropertyType and GetPropertyFlags to get more detailed property information. If Unity cannot find a property with the given name, the function returns -1.
