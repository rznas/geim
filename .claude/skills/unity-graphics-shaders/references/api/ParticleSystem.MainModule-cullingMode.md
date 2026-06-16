<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-cullingMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Configure whether the Particle System will still be simulated each frame, when it is offscreen.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.cullingMode = ParticleSystemCullingMode.AlwaysSimulate;
    }
}
```
