<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material-mainTextureScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The scale of the main texture.

By default, Unity considers a texture with the property name name `"_MainTex"` to be the main texture. Use the `[MainTexture]` ShaderLab Properties attribute to make Unity consider a texture with a different property name to be the main texture.

This is the same as calling Material.GetTextureScale or Material.SetTextureScale with the property name of the main texture as a parameter.

Additional resources: SetTextureScale, GetTextureScale, ShaderLab: Properties, ShaderPropertyFlags.MainTexture.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    Renderer rend;    void Start()
    {
        rend = GetComponent<Renderer>();
    }    void Update()
    {
        // Animates main texture scale in a funky way!
        float scaleX = Mathf.Cos(Time.time) * 0.5f + 1;
        float scaleY = Mathf.Sin(Time.time) * 0.5f + 1;
        rend.material.mainTextureScale = new Vector2(scaleX, scaleY);
    }
}
```
