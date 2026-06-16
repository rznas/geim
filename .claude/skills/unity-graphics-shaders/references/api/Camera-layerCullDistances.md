<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-layerCullDistances.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Per-layer culling distances.

Normally Camera skips rendering of objects that are further away than farClipPlane. You can set up some Layers to use smaller culling distances using layerCullDistances. This is very useful to cull small objects early on, if you put them into appropriate layers.

When assigning layerCullDistances, you need to assign float array that has 32 values. Zero values in cull distances means "use far plane distance".

By default, per-layer culling will use a plane aligned with the camera. You can change this to a sphere by setting layerCullSpherical on the Camera to true.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Camera camera = GetComponent<Camera>();
        float[] distances = new float[32];
        distances[10] = 15;
        camera.layerCullDistances = distances;
    }
}
```

Additional resources: farClipPlane, layerCullSpherical.
