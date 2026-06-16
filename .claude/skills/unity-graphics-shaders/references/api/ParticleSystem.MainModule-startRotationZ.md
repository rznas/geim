<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-startRotationZ.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The initial rotation of particles around the z-axis when the Particle System first spawns them

Note that you should specify the value in radians.. Additional resources: MinMaxCurve.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 1.0F;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startRotation3D = true;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.material = new Material(Shader.Find("Sprites/Default"));    // this material renders a square billboard, so we can see the rotation
    }    void Update()
    {
        var main = ps.main;
        main.startRotationZ = hSliderValue;
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 45, 100, 30), hSliderValue, 0.0F, 360.0F * Mathf.Deg2Rad);
    }
}
```
