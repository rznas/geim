<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler.GetRuntimeMemorySizeLong.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| o | The target Unity object. |

### Returns

**long** The amount of native-memory used by a Unity object. This returns 0 if the Profiler is not available.

### Description

Gathers the native-memory used by a Unity object.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    void Update()
    {
        Object[] textures = Resources.FindObjectsOfTypeAll(typeof(Texture));
        foreach (Texture t in textures)
        {
            Debug.Log("Texture object " + t.name + " using: " + Profiler.GetRuntimeMemorySizeLong((Texture)t) + "Bytes");
        }
    }
}
```
