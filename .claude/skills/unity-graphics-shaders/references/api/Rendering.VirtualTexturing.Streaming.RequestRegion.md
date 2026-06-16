<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VirtualTexturing.Streaming.RequestRegion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mat | The Material that contains the Virtual Texture Stack. The Virtual Texture Stacks contained in a Material are declared in the Material's Shader. |
| stackNameId | The unique identifier for the name of the Virtual Texture Stack, as declared in the Shader. To find the identifier for a given Shader property name, use Shader.PropertyToID. |
| r | The rectangle in 0-1 UV space to make resident. Anything outside the [ 0...1 [ x [ 0...1 [ rectangle will be silently ignored. |
| mipMap | The mip level to make resident. Mips are numbered from 0 (= full resolution) to n (= lowest resolution) where n is the mipmap level what is a single tile in size. Requesting invalid mips is silently ignored. |
| numMips | The number of mip levels starting from 'mipMap' to make resident. Requesting invalid mips is silently ignored. |

### Description

Make a rectangle in UV space resident for a given Virtual Texture Stack.

The system will do it’s best to make this rectangle resident at the requested resolution as fast as possible but due to time and memory constraints this data may take a while to become resident or even never become resident. This function should be called regularly (preferably every frame) to indicate the continued interest in this data. When this function is no longer called the requested area may be evicted from memory or only be available at a lower resolution. See Streaming.RequestRegion for an example using this function.

The following example requests the 1024 x 1024 pixel mipmap level of a given Virtual Texture Stack.

```csharp
using UnityEngine;public class GetStackSizeSample : MonoBehaviour
{
    public Material targetMaterial;
    public string stackName;
    private bool m_ShouldRequestRegionForVT = false;
    const float desiredMipmapLevelPixelSize = 1024f;    private void OnBecameVisible()
    {
        m_ShouldRequestRegionForVT = true;
    }    private void OnBecameInvisible()
    {
        m_ShouldRequestRegionForVT = false;
    }    void Update()
    {
        if (m_ShouldRequestRegionForVT)
        {
            int stackPropertyId = Shader.PropertyToID(stackName);            // Get size in pixels of the stack.
            int width, height;
            UnityEngine.Rendering.VirtualTexturing.Streaming.GetTextureStackSize(targetMaterial, stackPropertyId, out width, out height);            // Calculate the index of the 1024 x 1024 mipmap level.
            int powerOfTwoExponent_RealSize = (int)Mathf.Max(Mathf.Log(width, 2f), Mathf.Log(height, 2f));
            int powerOfTwoExponent_DesiredSize = (int)Mathf.Log(desiredMipmapLevelPixelSize, 2f);            // The difference between the real size and the desired size is the same as the mipmap level we want.
            // For example, to get a 1024 x 1024 mipmap level from a 4096 x 4096 texture, use mipmap level 2.
            // If the mipmap level is larger than the texture, fall back to the original texture size at mipmap level 0.
            int mipmapLevel = Mathf.Max(powerOfTwoExponent_RealSize - powerOfTwoExponent_DesiredSize, 0);            // Request this mipmap level to be made resident.
            UnityEngine.Rendering.VirtualTexturing.Streaming.RequestRegion(targetMaterial, stackPropertyId, new Rect(0.0f, 0.0f, 1.0f, 1.0f), mipmapLevel, UnityEngine.Rendering.VirtualTexturing.System.AllMips);
        }
    }
}
```
