<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader.SetGlobalFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The name ID of the property retrieved by Shader.PropertyToID. |
| name | The name of the property. |

### Description

Sets a global float property for all shaders.

Global properties are used if a shader needs them but the material does not have them defined (for example, if the shader does not expose them in `Properties` block).

Usually this is used if you have a set of custom shaders that all use the same "global" float (for example, density of some custom fog type). Then you can set the global property from script and don't have to setup the same float in all materials.

Additional resources: SetGlobalColor, SetGlobalTexture; Material class, ShaderLab documentation.

The following example sets the global float property `_MyFloat` to `1` in all shaders.

```csharp
using UnityEngine;public class SetGlobalFloatExample : MonoBehaviour
{
    void Start()
    {
        Shader.SetGlobalFloat("_MyFloat", 1.0f);
    }
}
```
