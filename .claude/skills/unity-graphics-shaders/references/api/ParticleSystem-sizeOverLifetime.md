<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-sizeOverLifetime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the SizeOverLifetimeModule of a Particle System.

This module controls the size of particles throughout their lifetime.

Particle System modules do not need to be reassigned back to the system; they are interfaces and not independent objects.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {
    void Start() {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var sz = ps.sizeOverLifetime;
        sz.enabled = true;        AnimationCurve curve = new AnimationCurve();
        curve.AddKey(0.0f, 0.1f);
        curve.AddKey(0.75f, 1.0f);        sz.size = new ParticleSystem.MinMaxCurve(1.5f, curve);
    }
}
```
