<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer-minParticleSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clamp the minimum particle size.

Tiny particles can cause aliasing, and not contribute visually to the Scene, whilst still negatively affecting performance. Use this setting to make sure they always maintain a minimum size on screen.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour {    private ParticleSystem ps;
    private ParticleSystemRenderer psr;
    public float minSize = 0.0f;
    public float maxSize = 1.0f;    void Start() {        ps = GetComponent<ParticleSystem>();
        psr = GetComponent<ParticleSystemRenderer>();        var main = ps.main;
        main.startSize = new ParticleSystem.MinMaxCurve(0.1f, 5.0f);
    }    void Update() {
        psr.minParticleSize = minSize;
        psr.maxParticleSize = maxSize;
    }    void OnGUI() {
        GUI.Label(new Rect(25, 40, 200, 30), "Minimum Screen Space Size");
        GUI.Label(new Rect(25, 80, 200, 30), "Maximum Screen Space Size");        minSize = GUI.HorizontalSlider(new Rect(245, 45, 100, 30), minSize, 0.0f, 1.0f);
        maxSize = GUI.HorizontalSlider(new Rect(245, 85, 100, 30), maxSize, 0.0f, 1.0f);
    }
}
```
