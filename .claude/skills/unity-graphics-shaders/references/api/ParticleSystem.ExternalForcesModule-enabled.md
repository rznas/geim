<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.ExternalForcesModule-enabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether the ExternalForcesModule is enabled or disabled.

Additional resources: ParticleSystem.externalForces.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool moduleEnabled = true;
    public float hSliderValue = 10.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        GameObject wind = new GameObject("Wind", typeof(WindZone));
        wind.transform.parent = ps.transform;
        wind.transform.localPosition = new Vector3(-4.0f, 0.0f, 0.0f);
        wind.GetComponent<WindZone>().mode = WindZoneMode.Spherical;
    }    void Update()
    {
        var externalForces = ps.externalForces;
        externalForces.enabled = moduleEnabled;
        externalForces.multiplier = hSliderValue;
    }    void OnGUI()
    {
        moduleEnabled = GUI.Toggle(new Rect(25, 45, 100, 30), moduleEnabled, "Enabled");
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 85, 100, 30), hSliderValue, 0.0f, 100.0f);
    }
}
```
