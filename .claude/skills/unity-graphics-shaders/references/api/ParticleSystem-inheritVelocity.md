<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-inheritVelocity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the InheritVelocityModule of a Particle System.

This module applies velocities to particles based on the velocity of the object that spawned them. For most Particle Systems, this is the GameObject velocity, but for sub-emitters, the velocity comes from the parent particle that the sub-emitter particle originated from.

Particle System modules do not need to be reassigned back to the system; they are interfaces and not independent objects.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {
    void Start() {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var iv = ps.inheritVelocity;
        iv.enabled = true;        AnimationCurve curve = new AnimationCurve();
        curve.AddKey(0.0f, 1.0f);
        curve.AddKey(1.0f, 0.0f);
        iv.curve = new ParticleSystem.MinMaxCurve(1.0f, curve);
    }
}
```
