<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-shape.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for the ShapeModule of a Particle System.

Configures the initial positions and directions of particles.

Particle System modules do not need to be reassigned back to the system; they are interfaces and not independent objects.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {
    public Mesh myMesh;    void Start() {
        ParticleSystem ps = GetComponent<ParticleSystem>();
        var sh = ps.shape;
        sh.enabled = true;
        sh.shapeType = ParticleSystemShapeType.Mesh;
        sh.mesh = myMesh;
    }
}
```
