<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.MainModule-flipRotation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Makes some particles spin in the opposite direction.

Set between 0 and 1. Higher values cause a higher proportion of particles to spin in the opposite direction.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 0.0F;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var rot = ps.rotationOverLifetime;
        rot.enabled = true;
        rot.zMultiplier = 90.0f * Mathf.Deg2Rad;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.material = new Material(Shader.Find("Sprites/Default"));    // this material renders a square billboard, so we can see the rotation
    }    void Update()
    {
        var main = ps.main;
        main.flipRotation = hSliderValue;
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 25, 100, 30), hSliderValue, 0.0F, 1.0F);
    }
}
```
