<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-main.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Access the main Particle System settings.

This module provides access to the general settings that are displayed above all of the other module settings in the Particle System's Inspector window.

Particle System modules do not need to be reassigned back to the system; they are interfaces and not independent objects.

```csharp
// Create a Particle System
// Set a 5 second start delay for the system, and a 2 second lifetime for each particle
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var main = ps.main;        main.startDelay = 5.0f;
        main.startLifetime = 2.0f;
    }
}
```
