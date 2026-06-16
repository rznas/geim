<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-maxGraphicsBufferSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum size of a graphics buffer (GraphicsBuffer, ComputeBuffer, vertex/index buffer, etc.) in bytes (Read Only).

Any GPU buffer (GraphicsBuffer, ComputeBuffer or a vertex/index buffer used by a Mesh) can not be larger than this amount of bytes.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // prints maximum graphics buffer size, in megabytes
        var maxSizeMb = SystemInfo.maxGraphicsBufferSize / 1024 / 1024;
        Debug.Log($"Maximum graphics buffer size is {maxSizeMb} MB");
    }
}
```
