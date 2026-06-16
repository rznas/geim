<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DynamicGI.SetEnvironmentData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| input | Array of float values to be used for Enlighten Realtime Global Illumination environment lighting. |

### Description

Allows overriding the distant environment lighting for Enlighten Realtime Global Illumination, without changing the Skybox Material.

The input array represents a cube with each face being 8 x 8 texels and each texel being 4 floats (for the RGBA values of the texel's color), so the size of the array is 8*8*6*4 = 1536 floats.
Note that changing the Distant Environment Lighting Source or Environment Lighting Intensity will overwrite the data set with this function.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // Set custom environment data for Enlighten Realtime Global Illumination.
        const int kCubeSize = 8 * 8;
        const int kEnvironmentDataSize = kCubeSize * 6 * 4;
        float[] envData = new float[kEnvironmentDataSize];        for (int c = 0; c < 6; ++c) // cube has 6 sides.
        {
            for (int i = 0; i < kCubeSize; i += 4)
            {
                int index = c * kCubeSize;                // Fill with default values.
                envData[index + i + 0] = 0.0f;
                envData[index + i + 1] = 0.0f;
                envData[index + i + 2] = 0.0f;
                envData[index + i + 3] = 1.0f;                // Funky colors on each cube face.
                envData[index + i + (c / 2)] = 4.0f * (float)i / (float)kCubeSize;
            }
        }        // Send the generated environment data to the GI system.
        DynamicGI.SetEnvironmentData(envData);
    }
}
```
