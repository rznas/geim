<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material-mainTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The main texture.

By default, Unity considers a texture with the property name `"_MainTex"` to be the main texture. Use the `[MainTexture]` ShaderLab Properties attribute to make Unity consider a texture with a different property name to be the main texture. When the main texture is set using the `[MainTexture]` attribute, it is not visible in the Game view when you use the texture streaming debugging view mode or a custom debug tool.

This is the same as calling Material.GetTexture or Material.SetTexture with the property name of the main texture as a parameter.

Additional resources: SetTexture, GetTexture, ShaderLab: Properties, ShaderPropertyFlags.MainTexture.

```csharp
// Change main texture each changeInterval/
// seconds from the texture array defined in the inspector.using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Texture[] textures;
    public float changeInterval = 0.33F;
    public Renderer rend;    void Start()
    {
        rend = GetComponent<Renderer>();
    }    void Update()
    {
        if (textures.Length == 0)
            return;        int index = Mathf.FloorToInt(Time.time / changeInterval);
        index = index % textures.Length;
        rend.material.mainTexture = textures[index];
    }
}
```
