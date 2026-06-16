<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsDeviceType.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Graphics device underlying backend API type.

The GraphicsDeviceType enumeration identifies the specific graphics API (like Direct3D, Vulkan, Metal, OpenGL) that Unity is currently using for rendering. Because Unity supports multiple APIs to run on diverse platforms and hardware, developers can query this type using SystemInfo.graphicsDeviceType. Knowing the active API (e.g., GraphicsDeviceType.Direct3D11, GraphicsDeviceType.Vulkan, GraphicsDeviceType.Metal) enables developers to customize rendering logic, apply platform-specific optimizations, maintain compatibility across different hardware, or debug issues caused by API-specific behaviors or feature differences.

Additional resources: SystemInfo.graphicsDeviceType.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class GraphicsDeviceTypeLog : MonoBehaviour
{
    void Start()
    {
        switch (SystemInfo.graphicsDeviceType)
        {
            case GraphicsDeviceType.Direct3D11:
                Debug.Log("Using DirectX 11.");
                break;
            case GraphicsDeviceType.Vulkan:
                Debug.Log("Using Vulkan.");
                break;
            default:
                Debug.Log("Using another graphics API.");
                break;
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| Direct3D11 | Direct3D 11 graphics API. |
| Null | No graphics API. |
| OpenGLES3 | OpenGL ES 3.0 graphics API. (deprecated on iOS and tvOS). |
| PlayStation4 | PlayStation 4 graphics API. |
| XboxOne | Xbox One graphics API using Direct3D 11. |
| Metal | iOS Metal graphics API. |
| OpenGLCore | OpenGL (Core profile - GL3 or later) graphics API. |
| Direct3D12 | Direct3D 12 graphics API. |
| Vulkan | Vulkan. |
| Switch | Nintendo Switch graphics API. |
| XboxOneD3D12 | Xbox One graphics API using Direct3D 12. |
| GameCoreXboxOne | Game Core Xbox One graphics API using Direct3D 12. |
| GameCoreXboxSeries | Game Core XboxSeries graphics API using Direct3D 12. |
| WebGPU | WebGPU (EXPERIMENTAL). |
