<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-emitterVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The current Particle System velocity.

If you set this property to a particular value, the emitterVelocityMode automatically switches to ParticleSystemEmitterVelocityMode.Custom.

```csharp
using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class Example : MonoBehaviour
{
    ParticleSystem.MainModule mainModule;    void Start()
    {
        var particleSystem = GetComponent<ParticleSystem>();
        mainModule = particleSystem.main;
    }    void OnGUI()
    {
        GUILayout.Label("Velocity: " + mainModule.emitterVelocity);
    }
}
```
