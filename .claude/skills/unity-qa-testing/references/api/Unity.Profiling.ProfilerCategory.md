<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Profiling.ProfilerCategory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use to specify category for instrumentation Profiler markers.

```csharp
using Unity.Profiling;public class MySystemClass
{
    static readonly ProfilerMarker s_SimulatePerfMarker = new ProfilerMarker(ProfilerCategory.Ai, "MySystem.Simulate");    public void UpdateLogic()
    {
        using (s_SimulatePerfMarker.Auto())
        {
            // ...
        }
    }
}
```

Additional resources: ProfilerMarker.

### Static Properties

| Property | Description |
| --- | --- |
| Ai | AI and NavMesh Profiler category. |
| Animation | Animation Profiler category. |
| Audio | Audio system Profiler category. |
| FileIO | File IO Profiler category. |
| Gui | UI Profiler category. |
| Input | Input system Profiler category. |
| Internal | Internal Unity systems Profiler category. |
| Lighting | Global Illumination Profiler category. |
| Loading | Loading system Profiler category. |
| Memory | Memory allocation Profiler category. |
| Network | Networking system Profiler category. |
| Particles | Particle system Profiler category. |
| Physics | Physics system Profiler category. |
| Physics2D | The Physics 2D system category for the Profiler. |
| Render | Rendering system Profiler category. |
| Scripts | Generic C# code Profiler category. |
| Video | Video system Profiler category. |
| VirtualTexturing | Virtual Texturing system Profiler category. |
| Vr | VR systen Profiler category. |

### Properties

| Property | Description |
| --- | --- |
| Color | Gets Profiler category color. |
| Name | Gets Profiler category name. |

### Constructors

| Constructor | Description |
| --- | --- |
| ProfilerCategory | Use to construct ProfilerCategory by category name. |
