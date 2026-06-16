<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-limitVelocityOverLifetime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the LimitVelocityOverLifetimeModule of a Particle System. .

This module reduces particle velocities by either applying drag or simply reducing velocity over time.

Particle System modules do not need to be reassigned back to the system; they are interfaces and not independent objects.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {
    void Start() {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var lv = ps.limitVelocityOverLifetime;
        lv.enabled = true;
        lv.dampen = 0.5f;        AnimationCurve curve = new AnimationCurve();
        curve.AddKey(0.0f, 1.0f);
        curve.AddKey(1.0f, 0.0f);
        lv.limit = new ParticleSystem.MinMaxCurve(10.0f, curve);
    }
}
```
