<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-duration.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The duration of the Particle System in seconds.

You can only set this property when the Particle System is not playing.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        ps.Stop(); // Cannot set duration whilst Particle System is playing        var main = ps.main;
        main.duration = 10.0f;        ps.Play();
    }
}
```
