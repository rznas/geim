<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-forceOverLifetime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the ForceOverLifetimeModule of a Particle System.

Apply forces to particles using this module. Forces are applied to the particle velocities on each frame.

Particle System modules do not need to be reassigned back to the system; they are interfaces and not independent objects.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {
    void Start() {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var fo = ps.forceOverLifetime;
        fo.enabled = true;        AnimationCurve curve = new AnimationCurve();
        curve.AddKey(0.0f, 0.1f);
        curve.AddKey(0.75f, 1.0f);
        fo.x = new ParticleSystem.MinMaxCurve(1.5f, curve);
    }
}
```
