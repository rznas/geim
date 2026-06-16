<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem.SizeBySpeedModule-range.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set the minimum and maximum speed that this modules applies the size curve between.

Additional resources: ParticleSystem.SizeBySpeedModule.size.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystem ps;
    public float hSliderValue = 1.0f;    void Start()
    {
        ps = GetComponent<ParticleSystem>();        var sizeBySpeed = ps.sizeBySpeed;
        sizeBySpeed.enabled = true;        AnimationCurve curve = new AnimationCurve();
        curve.AddKey(0.0f, 0.0f);
        curve.AddKey(1.0f, 1.0f);        sizeBySpeed.size = new ParticleSystem.MinMaxCurve(1.0f, curve);
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
