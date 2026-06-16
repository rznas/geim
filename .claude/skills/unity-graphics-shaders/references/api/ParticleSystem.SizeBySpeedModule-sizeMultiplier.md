<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.SizeBySpeedModule-sizeMultiplier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A multiplier for ParticleSystem.SizeBySpeedModule.size.

Changing this property is more efficient than accessing the entire curve, if you only want to change the overall size multiplier.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 1.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var sizeBySpeed = ps.sizeBySpeed;
        sizeBySpeed.enabled = true;        sizeBySpeed.sizeMultiplier = 1.0f;
        sizeBySpeed.range = new Vector2(0.9f, 5.0f);        var psr = GetComponent<ParticleSystemRenderer>();
        psr.material = new Material(Shader.Find("Sprites/Default"));    // this material renders a square billboard, making it easier to see the size
    }    void Update()
    {
        var main = ps.main;
        main.startSpeed = hSliderValue;
    }    void OnGUI()
    {
        hSliderValue = GUI.HorizontalSlider(new Rect(25, 45, 100, 30), hSliderValue, 1.0f, 5.0f);
    }
}
```
