<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.ForceOverLifetimeModule-x.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The curve that defines particle forces in the x-axis.

Additional resources: MinMaxCurve.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool moduleEnabled = true;
    public float hSliderValue = 10.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }    void Update()
    {
        var forceOverLifetime = ps.forceOverLifetime;
        forceOverLifetime.enabled = moduleEnabled;
        forceOverLifetime.x = hSliderValue;
    }    void OnGUI()
    {
        moduleEnabled = GUI.Toggle(new Rect(25, 45, 100, 30), moduleEnabled, "Enabled");
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 85, 100, 30), hSliderValue, -50.0f, 50.0f);
    }
}
```
