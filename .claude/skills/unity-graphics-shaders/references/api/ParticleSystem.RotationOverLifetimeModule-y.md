<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.RotationOverLifetimeModule-y.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Rotation over lifetime curve for the y-axis.

Additional resources: MinMaxCurve.

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
        rotationOverLifetime.separateAxes = true;        AnimationCurve curve = new AnimationCurve();
        curve.AddKey(0.0f, 0.0f);
        curve.AddKey(1.0f, 1.0f);        rotationOverLifetime.x = 0.0f;
        rotationOverLifetime.y = new ParticleSystem.MinMaxCurve(Mathf.PI * 2.0f, curve);
        rotationOverLifetime.z = 0.0f;        var psr = GetComponent<ParticleSystemRenderer>();
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
