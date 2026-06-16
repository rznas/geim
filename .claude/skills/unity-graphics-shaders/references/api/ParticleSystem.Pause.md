<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.Pause.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| withChildren | Pause all child Particle Systems as well. |

### Description

Pauses the system so no new particles are emitted and the existing particles are not updated.

Additional resources: Play, Stop functions.

The following example creates a GUI window for manipulating a Particle System.

```csharp
using UnityEngine;public class ParticleSystemControllerWindow : MonoBehaviour
{
    ParticleSystem system
    {
        get
        {
            if (_CachedSystem == null)
                _CachedSystem = GetComponent<ParticleSystem>();
            return _CachedSystem;
        }
    }
    private ParticleSystem _CachedSystem;    public Rect windowRect = new Rect(0, 0, 300, 120);    public bool includeChildren = true;    void OnGUI()
    {
        windowRect = GUI.Window("ParticleController".GetHashCode(), windowRect, DrawWindowContents, system.name);
    }    void DrawWindowContents(int windowId)
    {
        if (system)
        {
            GUILayout.BeginHorizontal();
            GUILayout.Toggle(system.isPlaying, "Playing");
            GUILayout.Toggle(system.isEmitting, "Emitting");
            GUILayout.Toggle(system.isPaused, "Paused");
            GUILayout.EndHorizontal();            GUILayout.BeginHorizontal();
            if (GUILayout.Button("Play"))
                system.Play(includeChildren);
            if (GUILayout.Button("Pause"))
                system.Pause(includeChildren);
            if (GUILayout.Button("Stop Emitting"))
                system.Stop(includeChildren, ParticleSystemStopBehavior.StopEmitting);
            if (GUILayout.Button("Stop & Clear"))
                system.Stop(includeChildren, ParticleSystemStopBehavior.StopEmittingAndClear);
            GUILayout.EndHorizontal();            includeChildren = GUILayout.Toggle(includeChildren, "Include Children");            GUILayout.BeginHorizontal();
            GUILayout.Label("Time(" + system.time + ")");
            GUILayout.Label("Particle Count(" + system.particleCount + ")");
            GUILayout.EndHorizontal();
        }
        else
            GUILayout.Label("No Particle System found");        GUI.DragWindow();
    }
}
```
