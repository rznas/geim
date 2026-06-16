<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.DefaultFormat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use a default format to create either Textures or RenderTextures from scripts based on platform specific capability.

```csharp
using UnityEngine;
using UnityEngine.Experimental.Rendering;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // Create a new texture and assign it to the material of the renderer.
        Texture2D texture = new Texture2D(1, 1, DefaultFormat.LDR, TextureCreationFlags.None);
        GetComponent<Renderer>().material.mainTexture = texture;
    }
}
```

Each graphics card may not support all usages across formats. Use SystemInfo.IsFormatSupported to check which usages the graphics card supports.

Additional resources: SystemInfo.GetGraphicsFormat, Texture2D, texture assets.

### Properties

| Property | Description |
| --- | --- |
| LDR | Represents the default platform-specific LDR format. If the project uses the linear rendering mode, the actual format is sRGB. If the project uses the gamma rendering mode, the actual format is UNorm. |
| HDR | Represents the default platform specific HDR format. |
| DepthStencil | Represents the default platform-specific depth stencil format. |
| Shadow | Represents the default platform specific shadow format. |
| Video | Represents the default platform specific video format. |
