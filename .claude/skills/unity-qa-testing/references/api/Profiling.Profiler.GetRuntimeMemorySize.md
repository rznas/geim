<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.GetRuntimeMemorySize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the runtime memory usage of the resource.

This has been implemented for the following resource types: Mesh, Texture, Audio, Animation and Materials Only available in development players and editor.

```csharp
using UnityEngine;
using UnityEngine.Profiling;public class Example : MonoBehaviour
{
    void Update()
    {
        Texture[] textures = Resources.FindObjectsOfTypeAll<Texture>();
        foreach (Texture t in textures)
        {
            Debug.Log("Texture object " + t.name + " using: " + Profiler.GetRuntimeMemorySize(t) + "Bytes");
        }
    }
}
```
