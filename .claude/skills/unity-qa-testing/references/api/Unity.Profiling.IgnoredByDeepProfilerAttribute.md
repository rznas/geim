<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.IgnoredByDeepProfilerAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

IgnoredByDeepProfilerAttribute prevents Unity Profiler from capturing method calls.

When you capture data with Unity Profiler in Deep Profiler mode, Unity registers entrance and exit to each function. In some cases, you want some code to be ignored. This can happen for instance if it is some kind of wrapper or method or class that adds too much clutter to the Profiler Time Line view. You can apply the [IgnoredByDeepProfiler] attribute to classes, structures, and methods. [IgnoredByDeepProfiler] works for both the Mono and IL2CPP scripting backends.

```csharp
using UnityEngine;
using Unity.Profiling;[IgnoredByDeepProfiler]
public class NewBehaviourScript : MonoBehaviour
{
    void Start()
    {
    }
}
```
