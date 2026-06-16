<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.SetTextureOffset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | The name of the texture property as defined in the shader. For example: "_MainTex". |
| value | Texture placement offset. |

### Description

Sets the placement offset of a given texture. The `name` parameter is defined in the shader. This method creates a new Material instance.

Additional resources: mainTextureOffset property, GetTextureOffset, SetTexture.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Scroll main texture based on time    float scrollSpeed = 0.5f;
    Renderer rend;    void Start()
    {
        rend = GetComponent<Renderer> ();
    }    void Update()
    {
        float offset = Time.time * scrollSpeed;
        rend.material.SetTextureOffset("_TextureName", new Vector2(offset, 0));
    }
}
```
