<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.SetTextureScale.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Property name, e.g. "_MainTex". |
| value | Texture placement scale. |

### Description

Sets the placement scale of texture `propertyName`.

Additional resources: mainTextureScale property, GetTextureScale, SetTexture.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Scroll main texture based on time    float scrollSpeed = 0.5f;
    Renderer rend;    void Start()
    {
        rend = GetComponent<Renderer> ();
    }    void Update()
    {
        // Animates main texture scale in a funky way!
        float scaleX = Mathf.Cos(Time.time) * 0.5f + 1;
        float scaleY = Mathf.Sin(Time.time) * 0.5f + 1;
        rend.material.SetTextureScale("_MainTex", new Vector2(scaleX, scaleY));
    }
}
```
