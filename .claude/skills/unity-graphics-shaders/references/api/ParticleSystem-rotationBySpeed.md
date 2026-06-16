<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-rotationBySpeed.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the RotationBySpeedModule of a Particle System.

Rotate particles based on their speed.

Particle System modules do not need to be reassigned back to the system; they are interfaces and not independent objects.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {
    void Start() {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var rot = ps.rotationBySpeed;
        rot.enabled = true;        AnimationCurve curve = new AnimationCurve();
        curve.AddKey(0.0f, 0.1f);
        curve.AddKey(0.75f, 0.6f);        AnimationCurve curve2 = new AnimationCurve();
        curve2.AddKey(0.0f, 0.2f);
        curve2.AddKey(0.5f, 0.9f);        rot.z = new ParticleSystem.MinMaxCurve(2.0f, curve, curve2);
    }
}
```
