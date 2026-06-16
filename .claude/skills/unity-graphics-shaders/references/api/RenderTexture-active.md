<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture-active.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Currently active render texture.

All rendering goes into the active RenderTexture. If the active RenderTexture is `null` everything is rendered in the main window.

Setting RenderTexture.active is the same as calling Graphics.SetRenderTarget. Typically you change or query the active render texture when implementing custom graphics effects; if all you need is to make a Camera render into a texture then use Camera.targetTexture instead.

When a RenderTexture becomes active its hardware rendering context is automatically created if it hasn't been created already.

Additional resources: Graphics.SetRenderTarget, GraphicsTexture.active.

```csharp
using UnityEngine;
using System.Collections;// Get the contents of a RenderTexture into a Texture2D
public class ExampleClass : MonoBehaviour
{
    static public Texture2D GetRTPixels(RenderTexture rt)
    {
        // Remember currently active render texture
        RenderTexture currentActiveRT = RenderTexture.active;        // Set the supplied RenderTexture as the active one
        RenderTexture.active = rt;        // Create a new Texture2D and read the RenderTexture image into it
        Texture2D tex = new Texture2D(rt.width, rt.height);
        tex.ReadPixels(new Rect(0, 0, tex.width, tex.height), 0, 0);
        tex.Apply();        // Restore previously active render texture
        RenderTexture.active = currentActiveRT;
        return tex;
    }
}
```
