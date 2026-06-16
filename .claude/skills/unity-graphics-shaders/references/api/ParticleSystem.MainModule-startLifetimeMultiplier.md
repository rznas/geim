<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-startLifetimeMultiplier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A multiplier for ParticleSystem.MainModule.startLifetime.

Changing this property is more efficient than accessing the entire curve, if you only want to change the overall lifetime multiplier.

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
        main.startLifetimeMultiplier = hSliderValue;
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 45, 100, 30), hSliderValue, 0.0F, 5.0F);
    }
}
```
