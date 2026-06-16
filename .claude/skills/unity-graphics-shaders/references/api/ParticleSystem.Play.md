<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.Play.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| withChildren | Play all child Particle Systems as well. |

### Description

Starts the Particle System and resets its playback time to 0.

The Play() function switches the Particle System into play mode and enables particle emission (if it was previously disabled). The exact behavior varies based on the system's current state:

If the Particle System has been **paused**, then this resumes playing from the previous time.
 If the Particle System has **stopped**, then the system starts from time 0, and, if it is relevant, the ParticleSystem.MainModule.startDelay is applied.
 If the Particle System is **already playing**, the system continues to play and reset the playback time to 0. For looping systems, the reset may have no visible impact. However, for non-looping systems, particles may start to emit again, depending on the system’s configuration.

```csharp
using UnityEngine;public class SimpleParticleSystemController : MonoBehaviour
{
    [SerializeField] private ParticleSystem particleSystem;    void Update()
    {
        // Press the spacebar to restart the Particle System.
        if (Input.GetKeyDown(KeyCode.Space))
        {
            particleSystem.Play();
            Debug.Log("Particle System restarted. Playback time reset to 0.");
        }
    }
}
```

For scripted control of Particle System playback, such as responding to game events or user input, `Play()` is the method used to initiate or restart particle emission. You can achieve more comprehensive control by using `Play()` in combination with methods like Pause and Stop, and by monitoring properties such as time and particleCount.

**Note**: Unity does not apply ParticleSystem.MainModule.prewarm when the Particle System resumes from a paused state. To apply `prewarm` when the Particle System resumes, call Clear after Stop.

**Note**: If you invoke this function again before the particle system has had time to spawn a particle, the particle system restarts its internal counters. This means that if you invoke this function continuously, a particle system with a low emission rate will never start to play.

```csharp
using UnityEngine;//The window allows you to play, pause, or stop the system, toggle child system inclusion, and view information like playback time and particle count.
public class ParticleSystemControllerWindow : MonoBehaviour
{
    ParticleSystem m_ParticleSystem;
    Rect m_WindowRect = new Rect(0, 0, 300, 120);
    bool m_IncludeChildren = true;    void Start()
    {
        m_ParticleSystem = GetComponent<ParticleSystem>();
    }
    
    void OnGUI()
    {
        m_WindowRect = GUI.Window("ParticleController".GetHashCode(), m_WindowRect, DrawWindowContents, m_ParticleSystem.name);
    }    void DrawWindowContents(int windowId)
    {
        if (m_ParticleSystem)
        {
            GUILayout.BeginHorizontal();
            GUILayout.Toggle(m_ParticleSystem.isPlaying, "Playing");
            GUILayout.Toggle(m_ParticleSystem.isEmitting, "Emitting");
            GUILayout.Toggle(m_ParticleSystem.isPaused, "Paused");
            GUILayout.EndHorizontal();            GUILayout.BeginHorizontal();
            if (GUILayout.Button("Play"))
                m_ParticleSystem.Play(m_IncludeChildren);
            if (GUILayout.Button("Pause"))
                m_ParticleSystem.Pause(m_IncludeChildren);
            if (GUILayout.Button("Stop Emitting"))
                m_ParticleSystem.Stop(m_IncludeChildren, ParticleSystemStopBehavior.StopEmitting);
            if (GUILayout.Button("Stop & Clear"))
                m_ParticleSystem.Stop(m_IncludeChildren, ParticleSystemStopBehavior.StopEmittingAndClear);
            GUILayout.EndHorizontal();            m_IncludeChildren = GUILayout.Toggle(m_IncludeChildren, "Include Children");            GUILayout.BeginHorizontal();
            GUILayout.Label("Time(" + m_ParticleSystem.time + ")");
            GUILayout.Label("Particle Count(" + m_ParticleSystem.particleCount + ")");
            GUILayout.EndHorizontal();
        }
        else
            GUILayout.Label("No Particle System found");        GUI.DragWindow();
    }
}
```

Additional resources: Stop, Pause, isEmitting functions.
