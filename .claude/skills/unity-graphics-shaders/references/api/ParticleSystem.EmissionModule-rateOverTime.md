<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.EmissionModule-rateOverTime.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The rate at which the emitter spawns new particles over time.

Additional resources: MinMaxCurve, ParticleSystem.EmissionModule.rateOverDistance.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 5.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }    void Update()
    {
        var emission = ps.emission;
        emission.rateOverTime = hSliderValue;
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 45, 100, 30), hSliderValue, 5.0f, 200.0f);
    }
}
```
