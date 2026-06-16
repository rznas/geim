<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.OnDemandRendering-willCurrentFrameRender.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

**True** if the current frame will be rendered.

```csharp
using UnityEngine;
using UnityEngine.Rendering;// This example shows how to determine if the current frame will be presented to the screen.
public class Example : MonoBehaviour
{
    void Start()
    {
        QualitySettings.vSyncCount = 0;
        Application.targetFrameRate = 60;
        OnDemandRendering.renderFrameInterval = 3;
    }    // Output will be:
    //
    // Will this frame render? False
    // Will this frame render? False
    // Will this frame render? True
    // Will this frame render? False
    // Will this frame render? False
    // Will this frame render? True
    void Update()
    {
        Debug.Log("Will this frame render? " + OnDemandRendering.willCurrentFrameRender);        if (!OnDemandRendering.willCurrentFrameRender)
        {
            // Frames that are not rendered may have some extra CPU cycles to spare for processes that would otherwise be too much of a burden.
            // For example: expensive math operations, spawning prefabs or loading assets.
        }
    }
}
```
