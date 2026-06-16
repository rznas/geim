<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer-normalDirection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies how to calculate lighting for the billboard.

A value of 0 means Unity calculates lighting as though the billboard was a sphere. This results in the billboard looking more like a sphere. A value of 1 means Unity calculates lighting for the billboard as a flat quad.

```csharp
using UnityEngine;
using UnityEditor;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {    private ParticleSystem ps;
    private ParticleSystemRenderer psr;
    public float normalDirection = 1.0f;    void Start() {        ps = GetComponent<ParticleSystem>();
        psr = GetComponent<ParticleSystemRenderer>();        psr.material = new Material(Shader.Find("Sprites/Default"));
    }    void Update() {        psr.normalDirection = normalDirection;
    }    void OnGUI() {        normalDirection = GUI.HorizontalSlider(new Rect(25, 25, 100, 30), normalDirection, 0.0f, 1.0f);
    }
}
```
