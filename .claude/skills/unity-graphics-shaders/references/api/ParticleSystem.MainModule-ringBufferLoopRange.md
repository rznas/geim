<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-ringBufferLoopRange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When ParticleSystem.MainModule.ringBufferMode is set to loop, this value defines the proportion of the particle life that loops.

This enables you to use other particle properties that are applied over the particle lifetimes, such as SizeOverLifetime. When the system must replace a particle, it plays the particle from its current age to its full lifetime. Then, removes it.

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
        main.ringBufferLoopRange = new Vector2(0.1f, 0.6f);
    }
}
```
