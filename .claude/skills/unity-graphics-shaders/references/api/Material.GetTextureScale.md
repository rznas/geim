<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.GetTextureScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Description

Gets the placement scale of texture `propertyName`.

Common texture names used by Unity's builtin shaders: 
 `"_MainTex"` is the main diffuse texture. This can also be accessed via mainTextureScale property. 
 `"_BumpMap"` is the normal map. 
 `"_Cube"` is the reflection cubemap.

Additional resources: mainTextureScale property, SetTextureScale.
