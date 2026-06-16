<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.ShapeModule-alignToDirection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Align particles based on their initial direction of travel.

The Shape Module supports setting the initial rotation of particles based on their direction of travel. This can be useful to make particles appear to have originated from the surface of a Mesh (for example, paint flaking off a surface). This works with any shape type. Unity applies any ParticleSystem.startRotation on top of this setting, so you can use both together.

You can use this setting in conjunction with the ParticleSystem.MainModule.startRotation setting; Unity adds the rotation given by ParticleSystem.MainModule.startRotation on top of the value that ParticleSystem.ShapeModule.alignToDirection calculates.

For example: add a ParticleSystem.MainModule.startRotation of 90 degrees when using ParticleSystem.ShapeModule.alignToDirection, and all the particles become perpendicular to the surface, like little spikes sticking out of it.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool toggle = true;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }    void Update()
    {
        var shape = ps.shape;
        shape.alignToDirection = toggle;
    }    void OnGUI()
    {
        toggle = GUI.Toggle(new Rect(25, 45, 200, 30), toggle, "Align To Direction");
    }
}
```
