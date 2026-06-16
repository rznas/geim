<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-stopAction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Select whether to Disable or Destroy the GameObject, or to call the MonoBehaviour.OnParticleSystemStopped script Callback, when the Particle System stops and all particles have died.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        ps.Stop();        var main = ps.main;
        main.loop = false;
        main.duration = 1.0f;
        main.stopAction = ParticleSystemStopAction.Destroy;        ps.Play();
    }
}
```
