<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.GetAllocatedMemoryForGraphicsDriver.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**long** Estimated used graphics memory in bytes. Returns 0 in Release Players.

### Description

Returns the estimated amount of allocated memory for the graphics driver, in bytes.

Use to obtain a value of the graphics memory used by all allocated graphics resources such as textures, meshes, compute and geometry buffers. The value is estimated based on the properties of created graphics resources which are allocated using graphics scripting API as well as internal graphics resources used by the Unity engine.

**Note:** Only available in development players and the Unity Editor.

```csharp
using UnityEngine;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
            Debug.Log("Estimated used graphics memory: " + Profiler.GetAllocatedMemoryForGraphicsDriver() + " Bytes");
    }
}
```

Additional resources: GetTotalReservedMemoryLong.
