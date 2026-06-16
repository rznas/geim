<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.RotationOverLifetimeModule-xMultiplier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Rotation multiplier around the x-axis.

Changing this property is more efficient than accessing the entire curve, if you only want to change the overall rotation multiplier.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 1.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var rotationOverLifetime = ps.rotationOverLifetime;
        rotationOverLifetime.enabled = true;
        rotationOverLifetime.separateAxes = true;        rotationOverLifetime.xMultiplier = (Mathf.PI * 2.0f);
        rotationOverLifetime.yMultiplier = 0.0f;
        rotationOverLifetime.zMultiplier = 0.0f;        var psr = GetComponent<ParticleSystemRenderer>();
        psr.material = new Material(Shader.Find("Sprites/Default"));    // this material renders a square billboard, so we can see the rotation
    }    void Update()
    {
        var main = ps.main;
        main.startLifetime = hSliderValue;
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 45, 100, 30), hSliderValue, 1.0f, 5.0f);
    }
}
```
