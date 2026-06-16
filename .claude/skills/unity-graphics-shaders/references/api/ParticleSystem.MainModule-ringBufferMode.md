<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-ringBufferMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Configure the Particle System to not kill its particles when their lifetimes are exceeded.

Rather than using the particle lifetimes to kill particles, the system replaces particles with new ones when there are more particles than specified in Max Particles. Additional resources: ParticleSystem.MainModule.ringBufferLoopRange.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }    void Update()
    {
        var main = ps.main;
        main.ringBufferMode = ParticleSystemRingBufferMode.PauseUntilReplaced;
    }
}
```
