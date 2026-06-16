<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture.Create.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if the texture is created, else false.

### Description

Actually creates the RenderTexture.

RenderTexture constructor does not actually create the hardware texture; by default the texture is created the first time it is set active. Calling `Create` lets you create it up front. `Create` does nothing if the texture is already created.

The initial contents of a newly created render texture are undefined. On some platforms and APIs the contents will default to black, but you shouldn't depend on this. You can use LoadStoreActionDebugModeSettings to highlight undefined areas of the display, to help you debug rendering problems on mobile platforms.

Additional resources: Release, IsCreated functions.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    public RenderTexture rt;    void  Start()
    {
        rt = new RenderTexture(256, 256, 16, RenderTextureFormat.ARGB32);
        rt.Create();        // Add code here to work on the render texture        // Release the hardware resources used by the render texture
        rt.Release();
    }
}
```
