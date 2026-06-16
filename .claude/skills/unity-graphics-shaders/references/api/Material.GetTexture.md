<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.GetTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Description

Get a named texture.

Many shaders use more than one texture. Use GetTexture to get the `propertyName` texture.

 If the texture is not found, the method writes an error message to the console and returns `null`.

Common texture names used by Unity's builtin shaders: 
 `"_MainTex"` is the main diffuse texture. This can also be accessed via mainTexture property. 
 `"_BumpMap"` is the normal map. 
 `"_Cube"` is the reflection cubemap.

Additional resources: mainTexture property, SetTexture, Shader.PropertyToID.
