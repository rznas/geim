<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-startLifetime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The total lifetime in seconds that each new particle has.

This value is set on the particle when the Particle System creates it. Assign a value of float.PositiveInfinity to particles to prevent the Particle System from destroying them. This gives the particles an infinite lifespan. Additional resources: MinMaxCurve.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 1.0F;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }    void Update()
    {
        var main = ps.main;
        main.startLifetime = hSliderValue;
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 45, 100, 30), hSliderValue, 0.0F, 5.0F);
    }
}
```
