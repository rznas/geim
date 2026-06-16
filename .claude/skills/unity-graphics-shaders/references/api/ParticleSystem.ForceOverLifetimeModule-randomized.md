<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.ForceOverLifetimeModule-randomized.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

When randomly selecting values between two curves or constants, this flag causes the system to choose a new random force on each frame.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public bool randomized;
    public float hSliderValue = 30.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var forceOverLifetime = ps.forceOverLifetime;
        forceOverLifetime.enabled = true;
    }    void Update()
    {
        var forceOverLifetime = ps.forceOverLifetime;
        forceOverLifetime.randomized = randomized;
        forceOverLifetime.x = new ParticleSystem.MinMaxCurve(-hSliderValue, hSliderValue);
        forceOverLifetime.y = new ParticleSystem.MinMaxCurve(-hSliderValue, hSliderValue);
        forceOverLifetime.z = new ParticleSystem.MinMaxCurve(-hSliderValue, hSliderValue);
    }    void OnGUI()
    {
        randomized = GUI.Toggle(new Rect(25, 45, 100, 30), randomized, "Randomized Per Frame");
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 85, 100, 30), hSliderValue, 0.0f, 50.0f);
    }
}
```
