<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsTexture-active.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Currently active graphics texture.

All rendering goes into the active GraphicsTexture. If the active GraphicsTexture is `null`, everything renders in the main window. If the active render target is a RenderTexture, `GraphicsTexture.active` returns the graphicsTexture of RenderTexture.active.

In order to set the active render target to a GraphicsTexture, it must have GraphicsTextureDescriptorFlags.RenderTarget enabled in GraphicsTextureDescriptor.flags on texture creation.

Setting `GraphicsTexture.active` is the same as calling Graphics.SetRenderTarget with a single GraphicsTexture. Typically you change or query the active render target when implementing custom graphics effects; if all you need is to make a Camera render into a texture, then use Camera.targetTexture with a RenderTexture instead.

Additional resources: GraphicsTextureDescriptorFlags.RenderTarget, Graphics.SetRenderTarget, RenderTexture.active.

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using System.Collections;// Get the contents of a GraphicsTexture into a Texture2D
public class ExampleClass : MonoBehaviour
{
    static public Texture2D GetGfxTexPixels(GraphicsTexture gfxTex)
    {
        // Remember currently active render target
        GraphicsTexture currentActiveRT = GraphicsTexture.active;        // Set the supplied GraphicsTexture as the active one
        GraphicsTexture.active = gfxTex;        // Create a new Texture2D and read the GraphicsTexture image into it
        Texture2D tex = new Texture2D(gfxTex.descriptor.width, gfxTex.descriptor.height);
        tex.ReadPixels(new Rect(0, 0, tex.width, tex.height), 0, 0);
        tex.Apply();        // Restore previously active render texture
        GraphicsTexture.active = currentActiveRT;
        return tex;
    }
}
```
