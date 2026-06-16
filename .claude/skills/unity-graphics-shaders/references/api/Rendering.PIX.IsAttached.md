<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.PIX.IsAttached.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if running via PIX and in a development build.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class PixControl : MonoBehaviour
{
    public int frameCaptureCount = 1;    int frameCount = 0;
    bool capturing = false;    void Awake()
    {
        if (PIX.IsAttached())
        {
            PIX.BeginGPUCapture();
            capturing = true;
        }
    }    void Update()
    {
        if (frameCount > frameCaptureCount && capturing)
        {
            PIX.EndGPUCapture();
            capturing = false;
        }        frameCount++;
    }
}
```
