<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material-mainTextureOffset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines the UV offset for the main texture in the Material. This property adjusts the position of the texture mapping on a Mesh surface relative to its UV coordinates.

By default, Unity considers a texture with the property name `"_MainTex"` to be the main texture. Use the `[MainTexture]` ShaderLab Properties attribute to make Unity consider a texture with a different property name to be the main texture.

This property is equivalent to calling Material.GetTextureOffset or Material.SetTextureOffset with main texture name as an argument. To modify the offset of other textures in the Material, use the equivalent methods with their respective property names.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Scroll the main texture based on time    float scrollSpeed = 0.5f;
    Renderer rend;    void Start()
    {
        rend = GetComponent<Renderer> ();
    }    void Update()
    {
        float offset = Time.time * scrollSpeed;
        rend.material.mainTextureOffset = new Vector2(offset, 0);
    }
}
```
