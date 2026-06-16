<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer-flip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flip a percentage of the particles, along each axis.

Set between 0 and 1, where higher values cause a higher proportion of the particles to flip, and 1 causes all particles to flip.

```csharp
using UnityEngine;
using UnityEditor;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {    private ParticleSystemRenderer psr;
    public Vector3 flip;    void Start() {        psr = GetComponent<ParticleSystemRenderer>();        psr.material = new Material(Shader.Find("Sprites/Default"));  // square material so we can see the pivot more easily
        psr.mesh = Resources.GetBuiltinResource<Mesh>("Capsule.fbx");
    }    void Update() {        psr.flip = flip;
    }    void OnGUI() {        GUI.Label(new Rect(25, 40, 100, 30), "X");
        GUI.Label(new Rect(25, 80, 100, 30), "Y");
        GUI.Label(new Rect(25, 120, 100, 30), "Z");        flip.x = GUI.HorizontalSlider(new Rect(65, 25, 100, 30), flip.x, 0.0f, 1.0f);
        flip.y = GUI.HorizontalSlider(new Rect(65, 65, 100, 30), flip.y, 0.0f, 1.0f);
        flip.z = GUI.HorizontalSlider(new Rect(65, 105, 100, 30), flip.z, 0.0f, 1.0f);
    }
}
```
