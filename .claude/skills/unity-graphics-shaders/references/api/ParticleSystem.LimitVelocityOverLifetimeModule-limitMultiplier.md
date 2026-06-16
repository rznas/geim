<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.LimitVelocityOverLifetimeModule-limitMultiplier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Change the limit multiplier.

Changing this property is more efficient than accessing the entire curve, if you only want to change the overall limit multiplier.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool moduleEnabled = true;
    public float hSliderValueSpeed = 0.0f;
    public float hSliderValueDampen = 0.1f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
    }    void Update()
    {
        var limitVelocityOverLifetime = ps.limitVelocityOverLifetime;
        limitVelocityOverLifetime.enabled = moduleEnabled;
        limitVelocityOverLifetime.limitMultiplier = hSliderValueSpeed;
        limitVelocityOverLifetime.dampen = hSliderValueDampen;
    }    void OnGUI()
    {
        moduleEnabled = GUI.Toggle(new Rect(25, 45, 200, 30), moduleEnabled, "Enabled");        GUI.Label(new Rect(25, 80, 100, 30), "Speed Limit");
        GUI.Label(new Rect(25, 120, 100, 30), "Dampen");        hSliderValueSpeed = GUI.HorizontalSlider(new Rect(95, 85, 100, 30), hSliderValueSpeed, 0.0f, 2.0f);
        hSliderValueDampen = GUI.HorizontalSlider(new Rect(95, 125, 100, 30), hSliderValueDampen, 0.0f, 1.0f);
    }
}
```
