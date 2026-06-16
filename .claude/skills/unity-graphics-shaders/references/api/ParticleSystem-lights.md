<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-lights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the LightsModule of a Particle System.

This module allows you to attach real-time Lights to a percentage of your particles.

The lights module is a simple and powerful module that allows particles to cast light onto their environment easily. Lights can inherit properties from the particles they are attached to, such as color and size. Point and Spot Lights are supported, including shadow casting and Light cookies.

Particle System modules do not need to be reassigned back to the system; they are interfaces and not independent objects.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {    public Light lightPrefab;    void Start() {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var lights = ps.lights;
        lights.enabled = true;
        lights.ratio = 0.5f;
        lights.light = lightPrefab;
    }
}
```
