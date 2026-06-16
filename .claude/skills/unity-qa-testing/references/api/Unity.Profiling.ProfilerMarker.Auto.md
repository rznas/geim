<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerMarker.Auto.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**AutoScope** IDisposable struct which calls Begin and End automatically.

### Description

Creates a helper struct for the scoped **using** blocks.

Begin is called in the constructor and End in the *Dispose* method.

**Note:** Auto is thread safe and can be used in jobified code.

```csharp
using Unity.Profiling;public class MySystemClass
{
    static ProfilerMarker s_SimulatePerfMarker = new ProfilerMarker("MySystem.Simulate");    public void UpdateLogic()
    {
        using (s_SimulatePerfMarker.Auto())
        {
            // ...
        }
    }
}
```
